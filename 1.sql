-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-05-2025 a las 17:22:36
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `password` char(40) NOT NULL,
  `secret` char(16) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `premium_ends_at` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `email` varchar(255) NOT NULL DEFAULT '',
  `key` varchar(64) NOT NULL DEFAULT '',
  `blocked` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'internal usage',
  `created` int(11) NOT NULL DEFAULT 0,
  `rlname` varchar(255) NOT NULL DEFAULT '',
  `location` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(3) NOT NULL DEFAULT '',
  `web_lastlogin` int(11) NOT NULL DEFAULT 0,
  `web_flags` int(11) NOT NULL DEFAULT 0,
  `email_hash` varchar(32) NOT NULL DEFAULT '',
  `email_new` varchar(255) NOT NULL DEFAULT '',
  `email_new_time` int(11) NOT NULL DEFAULT 0,
  `email_code` varchar(255) NOT NULL DEFAULT '',
  `email_next` int(11) NOT NULL DEFAULT 0,
  `premium_points` int(11) NOT NULL DEFAULT 0,
  `email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `creation` int(11) NOT NULL DEFAULT 0,
  `vote` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `password`, `secret`, `type`, `premium_ends_at`, `email`, `key`, `blocked`, `created`, `rlname`, `location`, `country`, `web_lastlogin`, `web_flags`, `email_hash`, `email_new`, `email_new_time`, `email_code`, `email_next`, `premium_points`, `email_verified`, `creation`, `vote`) VALUES
(1, '21029', '8dac6f7889f4b33c9c2348b72813f16af30d6fb0', NULL, 5, 4294967295, 'mjorkera06@gmail.com', '', 0, 1650032088, '', '', 'us', 1681872140, 3, '', '', 0, '', 0, 0, 0, 0, 0),
(2, 'yokoderaxd', '8dac6f7889f4b33c9c2348b72813f16af30d6fb0', NULL, 1, 4294967295, 'mjorkerasa06@gmail.com', '', 0, 1650731145, '', '', 'pl', 1681871899, 0, '', '', 0, '', 0, 0, 0, 0, 0),
(3, 'pablosb', '21454105c76bf158303127e46b952ec63a26a0f7', NULL, 1, 4294967295, 'pablo_xd_top@hotmail.com', '', 0, 1665945905, '', '', '', 1665945916, 0, '', '', 0, '', 0, 0, 0, 0, 0),
(4, 'bandio123', '04ef0d067b75f8b3a4e8abcb3e53a57aec588517', NULL, 1, 4294967295, 'barraza.abel@hotmail.com', '', 0, 1677629977, '', '', '', 1677629984, 0, '', '', 0, '', 0, 0, 0, 0, 0),
(5, 'polanco', '75f82ca5740cecd05b62b19cca0967285fbc5771', NULL, 1, 4294967295, 'polanco@gmail.com', '', 0, 1679004705, '', '', '', 1679257966, 0, '', '', 0, '', 0, 0, 0, 0, 0),
(6, 'hahaha', '5a0f662301f887997b94979c84faed547188c55d', NULL, 1, 4294967295, 'asihdasu@hotmail.com', '', 0, 1679255645, '', '', '', 1679256763, 0, '', '', 0, '', 0, 0, 0, 0, 0),
(7, 'kevinsito12', 'd705c3c84229742ec3d9da102f2cfb94b8d0ec6d', NULL, 1, 4294967295, 'kevin009009@outlook.com', '', 0, 1679255956, '', '', '', 1679255983, 0, '', '', 0, '', 0, 0, 0, 0, 0),
(8, 'yosvir', 'f69317646f2bd7a28aaa22311477877a566ef26b', NULL, 1, 4294967295, 'ksadh@hotmail.com', '', 0, 1679258033, '', '', '', 1679258052, 0, '', '', 0, '', 0, 0, 0, 0, 0),
(9, 'lutze', '846a62bc14009b576a46304e217b3f8b2034f891', NULL, 6, 4294967295, 'asdasdas@gmail.com', '', 0, 1701365389, '', '', 'us', 1740941353, 3, '', '', 0, '', 0, 0, 0, 0, 0),
(10, 'tamgo', '93c97884aff27fa3cf07454bd44e2958e4014862', '', 6, 1727236894, 'steven240282@gmail.com', '', 0, 1718331451, '', '', 'us', 1741304141, 3, '', '', 0, '', 0, 964219, 0, 0, 0),
(11, 'astruns', '813e867cf5fe9cfe4d838fbd47aa3cfc5feb88e3', NULL, 1, 0, 'alejandrito3466870@gmail.com', '', 0, 1718637175, '', '', 've', 1718639437, 0, '', '', 0, '', 0, 0, 0, 0, 0),
(13, 'davidxz', 'dcc57fa3ce60f5db52b8563bbcbdc0659935ab70', NULL, 1, 100, 'chirinosdavid726@gmail.com', '', 0, 1723585628, '', '', 've', 1723683302, 0, '', '', 0, '', 0, 0, 0, 0, 0),
(14, 'beken', '028d34a868d225a04b985516553d896d0fd4bccc', NULL, 1, 100, 'steven24asdas0282@gmail.com', '', 0, 1723586169, '', '', 'gb', 1723586179, 0, '', '', 0, '', 0, 0, 0, 0, 0),
(15, '14118149', 'e98bb5661b393cf8f846f98fa0934b266dfc0fb9', NULL, 1, 0, 'kaqaw@hotmail.com', '', 0, 1723683778, '', '', 'aq', 0, 0, '', '', 0, '', 0, 0, 0, 0, 0),
(16, 'lutz3', '846a62bc14009b576a46304e217b3f8b2034f891', NULL, 1, 0, 'aklsjda@gmail.com', '', 0, 1726336422, '', '', 'td', 0, 0, '', '', 0, '', 0, 0, 0, 0, 0),
(17, 'tamgos', 'd5fb7526d443c0c250e692d45ef6a654b27fa592', NULL, 1, 0, 'steven2402812@gmail.com', '', 0, 1740273608, '', '', 'pe', 1740273666, 0, '', '', 0, '', 0, 0, 0, 0, 0),
(18, 'tamgo1', '93c97884aff27fa3cf07454bd44e2958e4014862', NULL, 1, 0, 'sdasdas@gmail.com', '', 0, 1740961293, '', '', 'pl', 1740961300, 0, '', '', 0, '', 0, 0, 0, 0, 0),
(19, 'tamgo2', '93c97884aff27fa3cf07454bd44e2958e4014862', NULL, 1, 0, 'steven123240282@gmail.com', '', 0, 1740964140, '', '', 'pe', 1740964147, 0, '', '', 0, '', 0, 0, 0, 0, 0),
(20, 'luispvp09', '5472fdfb83d0417b244334c14795a380ff23e026', NULL, 1, 0, 'luispvp0908@gmail.com', '', 0, 1741306109, '', '', 'gb', 1741306298, 0, '', '', 0, '', 0, 0, 0, 0, 0),
(21, 'tamgos3', '93c97884aff27fa3cf07454bd44e2958e4014862', NULL, 1, 0, 'steven2402182@gmail.com', '', 0, 1741306206, '', '', 'pe', 1741306221, 0, '', '', 0, '', 0, 0, 0, 0, 0);

--
-- Disparadores `accounts`
--
DELIMITER $$
CREATE TRIGGER `ondelete_accounts` BEFORE DELETE ON `accounts` FOR EACH ROW BEGIN DELETE FROM `bans` WHERE `type` NOT IN(1, 2) AND `value` = OLD.`id`; END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `account_bans`
--

CREATE TABLE `account_bans` (
  `account_id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `banned_at` bigint(20) NOT NULL,
  `expires_at` bigint(20) NOT NULL,
  `banned_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `account_ban_history`
--

CREATE TABLE `account_ban_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `banned_at` bigint(20) NOT NULL,
  `expired_at` bigint(20) NOT NULL,
  `banned_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `account_storage`
--

CREATE TABLE `account_storage` (
  `account_id` int(4) DEFAULT NULL,
  `key` int(10) DEFAULT NULL,
  `value` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `account_viplist`
--

CREATE TABLE `account_viplist` (
  `account_id` int(11) NOT NULL COMMENT 'id of account whose viplist entry it is',
  `player_id` int(11) NOT NULL COMMENT 'id of target player of viplist entry',
  `description` varchar(128) NOT NULL DEFAULT '',
  `icon` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `notify` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guilds`
--

CREATE TABLE `guilds` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ownerid` int(11) NOT NULL,
  `creationdata` int(11) NOT NULL,
  `motd` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `logo_name` varchar(255) NOT NULL DEFAULT 'default.gif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Disparadores `guilds`
--
DELIMITER $$
CREATE TRIGGER `oncreate_guilds` AFTER INSERT ON `guilds` FOR EACH ROW BEGIN
    INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('the Leader', 3, NEW.`id`);
    INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('a Vice-Leader', 2, NEW.`id`);
    INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('a Member', 1, NEW.`id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `ondelete_guilds` BEFORE DELETE ON `guilds` FOR EACH ROW BEGIN UPDATE `players` SET `guildnick` = '', `rank_id` = 0 WHERE `rank_id` IN (SELECT `id` FROM `guild_ranks` WHERE `guild_id` = OLD.`id`); END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guildwar_kills`
--

CREATE TABLE `guildwar_kills` (
  `id` int(11) NOT NULL,
  `killer` varchar(50) NOT NULL,
  `target` varchar(50) NOT NULL,
  `killerguild` int(11) NOT NULL DEFAULT 0,
  `targetguild` int(11) NOT NULL DEFAULT 0,
  `warid` int(11) NOT NULL DEFAULT 0,
  `time` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guild_invites`
--

CREATE TABLE `guild_invites` (
  `player_id` int(11) NOT NULL DEFAULT 0,
  `guild_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guild_membership`
--

CREATE TABLE `guild_membership` (
  `player_id` int(11) NOT NULL,
  `guild_id` int(11) NOT NULL,
  `rank_id` int(11) NOT NULL,
  `nick` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guild_ranks`
--

CREATE TABLE `guild_ranks` (
  `id` int(11) NOT NULL,
  `guild_id` int(11) NOT NULL COMMENT 'guild',
  `name` varchar(255) NOT NULL COMMENT 'rank name',
  `level` int(11) NOT NULL COMMENT 'rank level - leader, vice, member, maybe something else'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guild_wars`
--

CREATE TABLE `guild_wars` (
  `id` int(11) NOT NULL,
  `guild1` int(11) NOT NULL DEFAULT 0,
  `guild2` int(11) NOT NULL DEFAULT 0,
  `name1` varchar(255) NOT NULL,
  `name2` varchar(255) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `started` bigint(15) NOT NULL DEFAULT 0,
  `ended` bigint(15) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `houses`
--

CREATE TABLE `houses` (
  `id` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `paid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `warnings` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `rent` int(11) NOT NULL DEFAULT 0,
  `town_id` int(11) NOT NULL DEFAULT 0,
  `bid` int(11) NOT NULL DEFAULT 0,
  `bid_end` int(11) NOT NULL DEFAULT 0,
  `last_bid` int(11) NOT NULL DEFAULT 0,
  `highest_bidder` int(11) NOT NULL DEFAULT 0,
  `size` int(11) NOT NULL DEFAULT 0,
  `beds` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `houses`
--

INSERT INTO `houses` (`id`, `owner`, `paid`, `warnings`, `name`, `rent`, `town_id`, `bid`, `bid_end`, `last_bid`, `highest_bidder`, `size`, `beds`) VALUES
(1, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 1)', 0, 0, 0, 0, 0, 0, 121, 0),
(2, 0, 0, 0, 'Unnamed House #2', 0, 1, 0, 0, 0, 0, 60, 0),
(3, 0, 0, 0, 'Unnamed House #3', 0, 1, 0, 0, 0, 0, 60, 0),
(4, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 4)', 0, 0, 0, 0, 0, 0, 17, 0),
(5, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 5)', 0, 0, 0, 0, 0, 0, 16, 0),
(6, 0, 0, 0, 'Unnamed House #6', 0, 1, 0, 0, 0, 0, 65, 0),
(7, 0, 0, 0, 'Unnamed House #7', 0, 1, 0, 0, 0, 0, 60, 0),
(8, 0, 0, 0, 'Unnamed House #8', 0, 1, 0, 0, 0, 0, 60, 0),
(9, 0, 0, 0, 'Unnamed House #9', 0, 1, 0, 0, 0, 0, 60, 0),
(10, 0, 0, 0, 'Unnamed House #10', 0, 1, 0, 0, 0, 0, 84, 0),
(11, 0, 0, 0, 'Unnamed House #11', 0, 1, 0, 0, 0, 0, 84, 0),
(12, 0, 0, 0, 'Unnamed House #12', 0, 1, 0, 0, 0, 0, 65, 0),
(13, 0, 0, 0, 'Unnamed House #13', 0, 1, 0, 0, 0, 0, 65, 0),
(14, 0, 0, 0, 'Unnamed House #14', 0, 1, 0, 0, 0, 0, 65, 0),
(15, 0, 0, 0, 'Unnamed House #15', 0, 1, 0, 0, 0, 0, 65, 0),
(16, 0, 0, 0, 'Unnamed House #16', 0, 1, 0, 0, 0, 0, 65, 0),
(17, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 17)', 0, 0, 0, 0, 0, 0, 13, 0),
(18, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 18)', 0, 0, 0, 0, 0, 0, 32, 0),
(19, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 19)', 0, 0, 0, 0, 0, 0, 27, 0),
(20, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 20)', 0, 0, 0, 0, 0, 0, 18, 0),
(21, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 21)', 0, 0, 0, 0, 0, 0, 17, 0),
(22, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 22)', 0, 0, 0, 0, 0, 0, 17, 0),
(23, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 23)', 0, 0, 0, 0, 0, 0, 19, 0),
(24, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 24)', 0, 0, 0, 0, 0, 0, 15, 0),
(25, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 25)', 0, 0, 0, 0, 0, 0, 15, 0),
(26, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 26)', 0, 0, 0, 0, 0, 0, 15, 0),
(27, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 27)', 0, 0, 0, 0, 0, 0, 15, 0),
(28, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 28)', 0, 0, 0, 0, 0, 0, 17, 0),
(29, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 29)', 0, 0, 0, 0, 0, 0, 21, 0),
(30, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 30)', 0, 0, 0, 0, 0, 0, 15, 0),
(31, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 31)', 0, 0, 0, 0, 0, 0, 15, 0),
(32, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 32)', 0, 0, 0, 0, 0, 0, 15, 0),
(33, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 33)', 0, 0, 0, 0, 0, 0, 15, 0),
(34, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 34)', 0, 0, 0, 0, 0, 0, 22, 0),
(35, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 35)', 0, 0, 0, 0, 0, 0, 17, 0),
(36, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 36)', 0, 0, 0, 0, 0, 0, 15, 0),
(37, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 37)', 0, 0, 0, 0, 0, 0, 15, 0),
(38, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 38)', 0, 0, 0, 0, 0, 0, 15, 0),
(39, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 39)', 0, 0, 0, 0, 0, 0, 15, 0),
(40, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 40)', 0, 0, 0, 0, 0, 0, 21, 0),
(41, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 41)', 0, 0, 0, 0, 0, 0, 17, 0),
(42, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 42)', 0, 0, 0, 0, 0, 0, 26, 0),
(43, 0, 0, 0, 'Unnamed House #43', 0, 1, 0, 0, 0, 0, 30, 0),
(44, 0, 0, 0, 'Unnamed House #44', 0, 1, 0, 0, 0, 0, 30, 0),
(45, 0, 0, 0, 'Unnamed House #45', 0, 1, 0, 0, 0, 0, 30, 0),
(46, 0, 0, 0, 'Unnamed House #46', 0, 1, 0, 0, 0, 0, 25, 0),
(47, 0, 0, 0, 'Unnamed House #47', 0, 1, 0, 0, 0, 0, 23, 0),
(48, 0, 0, 0, 'Unnamed House #48', 0, 1, 0, 0, 0, 0, 29, 0),
(49, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 49)', 0, 0, 0, 0, 0, 0, 25, 0),
(50, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 50)', 0, 0, 0, 0, 0, 0, 37, 0),
(51, 0, 0, 0, 'Unnamed House #51', 0, 1, 0, 0, 0, 0, 30, 0),
(52, 0, 0, 0, 'Unnamed House #52', 0, 1, 0, 0, 0, 0, 30, 0),
(53, 0, 0, 0, 'Unnamed House #53', 0, 1, 0, 0, 0, 0, 30, 0),
(54, 0, 0, 0, 'Unnamed House #54', 0, 1, 0, 0, 0, 0, 29, 0),
(55, 0, 0, 0, 'Unnamed House #55', 0, 1, 0, 0, 0, 0, 29, 0),
(56, 0, 0, 0, 'Unnamed House #56', 0, 1, 0, 0, 0, 0, 25, 0),
(57, 0, 0, 0, 'Unnamed House #57', 0, 1, 0, 0, 0, 0, 29, 0),
(58, 0, 0, 0, 'Unnamed House #58', 0, 1, 0, 0, 0, 0, 25, 0),
(59, 0, 0, 0, 'Unnamed House #59', 0, 1, 0, 0, 0, 0, 29, 0),
(60, 0, 0, 0, 'Unnamed House #60', 0, 1, 0, 0, 0, 0, 29, 0),
(61, 0, 0, 0, 'Unnamed House #61', 0, 1, 0, 0, 0, 0, 29, 0),
(62, 0, 0, 0, 'Unnamed House #62', 0, 1, 0, 0, 0, 0, 34, 0),
(63, 0, 0, 0, 'Unnamed House #63', 0, 1, 0, 0, 0, 0, 35, 0),
(64, 0, 0, 0, 'Unnamed House #64', 0, 1, 0, 0, 0, 0, 29, 0),
(65, 0, 0, 0, 'DBKO headquarter (Flat 1, Area 64)', 0, 0, 0, 0, 0, 0, 21, 0),
(66, 0, 0, 0, 'Unnamed House #66', 0, 1, 0, 0, 0, 0, 29, 0),
(67, 0, 0, 0, 'Unnamed House #67', 0, 1, 0, 0, 0, 0, 31, 0),
(68, 0, 0, 0, 'Unnamed House #68', 0, 0, 0, 0, 0, 0, 21, 0),
(69, 0, 0, 0, 'Unnamed House #69', 0, 1, 0, 0, 0, 0, 20, 0),
(70, 0, 0, 0, 'Unnamed House #70', 0, 1, 0, 0, 0, 0, 19, 0),
(71, 0, 0, 0, 'Unnamed House #71', 0, 1, 0, 0, 0, 0, 20, 0),
(72, 0, 0, 0, 'Unnamed House #72', 0, 1, 0, 0, 0, 0, 20, 0),
(73, 0, 0, 0, 'Unnamed House #1', 30000, 1, 0, 0, 0, 0, 22, 0),
(74, 0, 0, 0, 'Unnamed House #2', 30000, 1, 0, 0, 0, 0, 24, 0),
(75, 0, 0, 0, 'Unnamed House #3', 30000, 1, 0, 0, 0, 0, 21, 0),
(76, 0, 0, 0, 'Unnamed House #4', 30000, 1, 0, 0, 0, 0, 21, 0),
(77, 0, 0, 0, 'Unnamed House #5', 30000, 1, 0, 0, 0, 0, 13, 0),
(78, 0, 0, 0, 'Unnamed House #6', 30000, 1, 0, 0, 0, 0, 15, 0),
(79, 0, 0, 0, 'Unnamed House #79', 0, 1, 0, 0, 0, 0, 20, 0),
(80, 0, 0, 0, 'Unnamed House #80', 0, 1, 0, 0, 0, 0, 20, 0),
(81, 0, 0, 0, 'Unnamed House #81', 0, 1, 0, 0, 0, 0, 20, 0),
(82, 0, 0, 0, 'Unnamed House #82', 0, 1, 0, 0, 0, 0, 24, 0),
(83, 0, 0, 0, 'Unnamed House #83', 0, 1, 0, 0, 0, 0, 23, 0),
(84, 0, 0, 0, 'Unnamed House #84', 0, 1, 0, 0, 0, 0, 24, 0),
(85, 0, 0, 0, 'Unnamed House #85', 0, 1, 0, 0, 0, 0, 24, 0),
(86, 0, 0, 0, 'Unnamed House #86', 0, 1, 0, 0, 0, 0, 29, 0),
(87, 0, 0, 0, 'Unnamed House #87', 0, 1, 0, 0, 0, 0, 24, 0),
(88, 0, 0, 0, 'Unnamed House #88', 0, 1, 0, 0, 0, 0, 24, 0),
(89, 0, 0, 0, 'Unnamed House #89', 0, 1, 0, 0, 0, 0, 27, 0),
(90, 0, 0, 0, 'Unnamed House #90', 0, 1, 0, 0, 0, 0, 35, 0),
(91, 0, 0, 0, 'Unnamed House #91', 0, 1, 0, 0, 0, 0, 30, 0),
(92, 0, 0, 0, 'Unnamed House #92', 0, 1, 0, 0, 0, 0, 29, 0),
(93, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 40, 0),
(94, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 35, 0),
(95, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 30, 0),
(96, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 28, 0),
(97, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 24, 0),
(98, 0, 0, 0, 'Wall Flat 2', 0, 4, 0, 0, 0, 0, 27, 1),
(99, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 22, 0),
(100, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 21, 0),
(101, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 21, 0),
(102, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 21, 0),
(103, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 20, 0),
(104, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 21, 0),
(105, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 21, 0),
(106, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 21, 0),
(107, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 21, 0),
(108, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 21, 0),
(109, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 21, 0),
(110, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 21, 0),
(111, 0, 0, 0, 'Armory Flat 1', 0, 2, 0, 0, 0, 0, 35, 2),
(112, 0, 0, 0, 'Armory Flat 2', 0, 2, 0, 0, 0, 0, 35, 1),
(116, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 21, 0),
(117, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 21, 0),
(118, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 21, 0),
(119, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 21, 0),
(120, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 21, 0),
(121, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 21, 0),
(122, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 21, 0),
(123, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 21, 0),
(124, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 21, 0),
(125, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 21, 0),
(126, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 21, 0),
(127, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 21, 0),
(128, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 21, 0),
(129, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 22, 0),
(130, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 21, 0),
(131, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 21, 0),
(132, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 25, 0),
(165, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 25, 0),
(166, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 25, 0),
(167, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 19, 0),
(168, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 30, 0),
(169, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 23, 0),
(170, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 30, 0),
(171, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 17, 0),
(172, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 25, 0),
(173, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 25, 0),
(174, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 25, 0),
(175, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 20, 0),
(176, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 25, 0),
(177, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 25, 0),
(178, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 25, 0),
(179, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 25, 0),
(180, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 42, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `house_lists`
--

CREATE TABLE `house_lists` (
  `house_id` int(11) NOT NULL,
  `listid` int(11) NOT NULL,
  `list` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ip_bans`
--

CREATE TABLE `ip_bans` (
  `ip` int(10) UNSIGNED NOT NULL,
  `reason` varchar(255) NOT NULL,
  `banned_at` bigint(20) NOT NULL,
  `expires_at` bigint(20) NOT NULL,
  `banned_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `list_of_items`
--

CREATE TABLE `list_of_items` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `level` int(11) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `list_of_items`
--

INSERT INTO `list_of_items` (`id`, `name`, `description`, `level`, `type`) VALUES
(100, 'void', '', 0, ''),
(101, 'earth', '', 0, ''),
(102, 'grass', '', 0, ''),
(103, 'dirt', '', 0, ''),
(104, 'sand', '', 0, ''),
(105, 'gravel', '', 0, ''),
(106, 'grass', '', 0, ''),
(107, 'rock soil', '', 0, ''),
(108, 'flowers', '', 0, ''),
(109, 'flowers', '', 0, ''),
(110, 'grass', '', 0, ''),
(111, 'grass', '', 0, ''),
(112, 'grass', '', 0, ''),
(113, 'grass', '', 0, ''),
(114, 'grass', '', 0, ''),
(115, 'grass', '', 0, ''),
(116, 'grass', '', 0, ''),
(117, 'grass', '', 0, ''),
(118, 'grass', '', 0, ''),
(119, 'grass', '', 0, ''),
(120, 'grass', '', 0, ''),
(121, 'grass', '', 0, ''),
(122, 'grass', '', 0, ''),
(123, 'grass', '', 0, ''),
(124, 'grass', '', 0, ''),
(125, 'grass', '', 0, ''),
(126, 'grass', '', 0, ''),
(127, 'grass', '', 0, ''),
(128, 'grass', '', 0, ''),
(129, 'grass', '', 0, ''),
(130, 'grass', '', 0, ''),
(131, 'grass', '', 0, ''),
(132, 'grass', '', 0, ''),
(133, 'grass', '', 0, ''),
(134, 'sand', '', 0, ''),
(135, 'sand', '', 0, ''),
(136, 'sand', '', 0, ''),
(137, 'sand', '', 0, ''),
(138, 'sand', '', 0, ''),
(139, 'sand', '', 0, ''),
(140, 'sand', '', 0, ''),
(141, 'sand', '', 0, ''),
(142, 'sand', '', 0, ''),
(143, 'sand', '', 0, ''),
(144, 'sand', '', 0, ''),
(145, 'sand', '', 0, ''),
(146, 'gravel', '', 0, ''),
(147, 'gravel', '', 0, ''),
(148, 'gravel', '', 0, ''),
(149, 'gravel', '', 0, ''),
(150, 'gravel', '', 0, ''),
(151, 'gravel', '', 0, ''),
(152, 'gravel', '', 0, ''),
(153, 'gravel', '', 0, ''),
(154, 'gravel', '', 0, ''),
(155, 'gravel', '', 0, ''),
(156, 'gravel', '', 0, ''),
(157, 'gravel', '', 0, ''),
(158, 'sand', '', 0, ''),
(159, 'sand', '', 0, ''),
(160, 'sand', '', 0, ''),
(161, 'sand', '', 0, ''),
(162, 'sand', '', 0, ''),
(163, 'sand', '', 0, ''),
(164, 'sand', '', 0, ''),
(165, 'sand', '', 0, ''),
(166, 'sand', '', 0, ''),
(167, 'sand', '', 0, ''),
(168, 'sand', '', 0, ''),
(169, 'sand', '', 0, ''),
(170, 'gravel', '', 0, ''),
(171, 'gravel', '', 0, ''),
(172, 'gravel', '', 0, ''),
(173, 'gravel', '', 0, ''),
(174, 'gravel', '', 0, ''),
(175, 'gravel', '', 0, ''),
(176, 'gravel', '', 0, ''),
(177, 'gravel', '', 0, ''),
(178, 'gravel', '', 0, ''),
(179, 'gravel', '', 0, ''),
(180, 'gravel', '', 0, ''),
(181, 'gravel', '', 0, ''),
(182, 'grass', '', 0, ''),
(183, 'grass', '', 0, ''),
(184, 'grass', '', 0, ''),
(185, 'grass', '', 0, ''),
(186, 'grass', '', 0, ''),
(187, 'grass', '', 0, ''),
(188, 'grass', '', 0, ''),
(189, 'grass', '', 0, ''),
(190, 'grass', '', 0, ''),
(191, 'grass', '', 0, ''),
(192, 'grass', '', 0, ''),
(193, 'grass', '', 0, ''),
(194, 'grass', '', 0, ''),
(195, 'grass', '', 0, ''),
(196, 'grass', '', 0, ''),
(197, 'grass', '', 0, ''),
(198, 'grass', '', 0, ''),
(199, 'grass', '', 0, ''),
(200, 'grass', '', 0, ''),
(201, 'flour', '', 0, ''),
(202, 'flour', '', 0, ''),
(203, 'flour', '', 0, ''),
(204, 'flour', '', 0, ''),
(205, 'flour', '', 0, ''),
(206, 'flour', '', 0, ''),
(207, 'flour', '', 0, ''),
(208, 'flour', '', 0, ''),
(209, 'flour', '', 0, ''),
(210, 'flour', '', 0, ''),
(211, 'flour', '', 0, ''),
(212, 'flour', '', 0, ''),
(213, 'flour', '', 0, ''),
(214, 'flour', '', 0, ''),
(215, 'gravel', '', 0, ''),
(216, 'gravel', '', 0, ''),
(217, 'gravel', '', 0, ''),
(218, 'gravel', '', 0, ''),
(219, 'grass', '', 0, ''),
(220, 'grass', '', 0, ''),
(221, 'grass', '', 0, ''),
(222, 'grass', '', 0, ''),
(223, 'grass', '', 0, ''),
(224, 'grass', '', 0, ''),
(225, 'grass', '', 0, ''),
(226, 'grass', '', 0, ''),
(227, 'grass', '', 0, ''),
(228, 'grass', '', 0, ''),
(229, 'grass', '', 0, ''),
(230, 'grass', '', 0, ''),
(231, 'sand', '', 0, ''),
(232, 'grass', '', 0, ''),
(233, 'grass', '', 0, ''),
(234, 'grass', '', 0, ''),
(235, 'grass', '', 0, ''),
(236, 'grass', '', 0, ''),
(237, 'grass', '', 0, ''),
(238, 'grass', '', 0, ''),
(239, 'grass', '', 0, ''),
(240, 'grass', '', 0, ''),
(241, 'grass', '', 0, ''),
(242, 'grass', '', 0, ''),
(243, 'grass', '', 0, ''),
(244, 'sand', '', 0, ''),
(245, 'sand', '', 0, ''),
(246, 'sand', '', 0, ''),
(247, 'sand', '', 0, ''),
(248, 'sand', '', 0, ''),
(249, 'sand', '', 0, ''),
(250, 'sand', '', 0, ''),
(251, 'sand', '', 0, ''),
(252, 'sand', '', 0, ''),
(253, 'sand', '', 0, ''),
(254, 'sand', '', 0, ''),
(255, 'sand', '', 0, ''),
(256, 'rock soil', '', 0, ''),
(257, 'rock soil', '', 0, ''),
(258, 'rock soil', '', 0, ''),
(259, 'rock soil', '', 0, ''),
(260, 'rock soil', '', 0, ''),
(261, 'rock soil', '', 0, ''),
(262, 'rock soil', '', 0, ''),
(263, 'rock soil', '', 0, ''),
(264, 'rock soil', '', 0, ''),
(265, 'rock soil', '', 0, ''),
(266, 'rock soil', '', 0, ''),
(267, 'rock soil', '', 0, ''),
(268, 'grass', '', 0, ''),
(269, 'grass', '', 0, ''),
(270, 'grass', '', 0, ''),
(271, 'grass', '', 0, ''),
(272, 'grass', '', 0, ''),
(273, 'grass', '', 0, ''),
(274, 'grass', '', 0, ''),
(275, 'grass', '', 0, ''),
(276, 'grass', '', 0, ''),
(277, 'grass', '', 0, ''),
(278, 'grass', '', 0, ''),
(279, 'grass', '', 0, ''),
(280, 'galaxy', '', 0, ''),
(281, 'grass', '', 0, ''),
(282, 'grass', '', 0, ''),
(283, 'grass', '', 0, ''),
(284, 'grass', '', 0, ''),
(285, 'grass', '', 0, ''),
(286, 'grass', '', 0, ''),
(287, 'grass', '', 0, ''),
(288, 'grass', '', 0, ''),
(289, 'grass', '', 0, ''),
(290, 'grass', '', 0, ''),
(291, 'grass', '', 0, ''),
(292, 'grass', '', 0, ''),
(293, 'grass', '', 0, ''),
(294, 'pitfall', '', 0, ''),
(295, 'grass', '', 0, ''),
(296, 'grass', '', 0, ''),
(297, 'grass', '', 0, ''),
(298, 'grass', '', 0, ''),
(299, 'grass', '', 0, ''),
(300, 'grass', '', 0, ''),
(301, 'grass', '', 0, ''),
(302, 'grass', '', 0, ''),
(303, 'grass', '', 0, ''),
(304, 'grass', '', 0, ''),
(305, 'grass', '', 0, ''),
(306, 'grass', '', 0, ''),
(307, 'grass', '', 0, ''),
(308, 'grass', '', 0, ''),
(309, 'grass', '', 0, ''),
(310, 'grass', '', 0, ''),
(311, 'grass', '', 0, ''),
(312, 'grass', '', 0, ''),
(313, 'grass', '', 0, ''),
(314, 'grass', '', 0, ''),
(315, 'grass', '', 0, ''),
(316, 'grass', '', 0, ''),
(317, 'grass', '', 0, ''),
(318, 'grass', '', 0, ''),
(319, 'sand', '', 0, ''),
(320, 'sand', '', 0, ''),
(321, 'sand', '', 0, ''),
(322, 'sand', '', 0, ''),
(323, 'sand', '', 0, ''),
(324, 'sand', '', 0, ''),
(325, 'sand', '', 0, ''),
(326, 'sand', '', 0, ''),
(327, 'grass', '', 0, ''),
(328, 'grass', '', 0, ''),
(329, 'grass', '', 0, ''),
(330, 'grass', '', 0, ''),
(331, 'grass', '', 0, ''),
(332, 'grass', '', 0, ''),
(333, 'grass', '', 0, ''),
(334, 'grass', '', 0, ''),
(335, 'sand', '', 0, ''),
(336, 'sand', '', 0, ''),
(337, 'sand', '', 0, ''),
(338, 'sand', '', 0, ''),
(339, 'sand', '', 0, ''),
(340, 'sand', '', 0, ''),
(341, 'sand', '', 0, ''),
(342, 'sand', '', 0, ''),
(343, 'gravel', '', 0, ''),
(344, 'gravel', '', 0, ''),
(345, 'gravel', '', 0, ''),
(346, 'gravel', '', 0, ''),
(347, 'gravel', '', 0, ''),
(348, 'gravel', '', 0, ''),
(349, 'gravel', '', 0, ''),
(350, 'gravel', '', 0, ''),
(351, 'dirt', '', 0, ''),
(352, 'dirt', '', 0, ''),
(353, 'dirt', '', 0, ''),
(354, 'dirt', '', 0, ''),
(355, 'muddy floor', '', 0, ''),
(356, 'dirt wall', '', 0, ''),
(357, 'dirt wall', '', 0, ''),
(358, 'dirt wall', '', 0, ''),
(359, 'dirt wall', '', 0, ''),
(360, 'dirt wall', '', 0, ''),
(361, 'dirt wall', '', 0, ''),
(362, 'dirt wall', '', 0, ''),
(363, 'dirt wall', '', 0, ''),
(364, 'dirt wall', '', 0, ''),
(365, 'dirt wall', '', 0, ''),
(366, 'dirt wall', '', 0, ''),
(367, 'dirt wall', '', 0, ''),
(368, 'galaxy', '', 0, ''),
(369, 'trapdoor', '', 0, ''),
(370, 'trapdoor', '', 0, ''),
(371, 'stone wall', '', 0, ''),
(372, 'stone wall', '', 0, ''),
(373, 'stone wall', '', 0, ''),
(374, 'stone wall', '', 0, ''),
(375, 'stone wall', '', 0, ''),
(376, 'stone wall', '', 0, ''),
(377, 'stone wall', '', 0, ''),
(378, 'stone wall', '', 0, ''),
(379, 'stone wall', '', 0, ''),
(380, 'stone wall', '', 0, ''),
(381, 'stone wall', '', 0, ''),
(382, 'stone wall', '', 0, ''),
(383, 'hole', '', 0, ''),
(384, 'rope spot', 'There is a hole in the ceiling.', 0, ''),
(385, 'small hole', 'It seems too narrow to climb through.', 0, ''),
(386, 'stalagmites', '', 0, ''),
(387, 'stalagmites', '', 0, ''),
(388, 'lava hole', 'It seems to be inactive.', 0, ''),
(389, 'lava hole', 'It emits heat and light.', 0, ''),
(390, 'stalagmites', '', 0, ''),
(391, 'stalagmites', '', 0, ''),
(392, 'hole', '', 0, ''),
(393, 'grass', '', 0, ''),
(394, 'grass', '', 0, ''),
(395, 'grass', '', 0, ''),
(396, 'grass', '', 0, ''),
(397, 'grass', '', 0, ''),
(398, 'grass', '', 0, ''),
(399, 'grass', '', 0, ''),
(400, 'grass', '', 0, ''),
(401, 'grass', '', 0, ''),
(402, 'grass', '', 0, ''),
(403, 'grass', '', 0, ''),
(404, 'grass', '', 0, ''),
(405, 'wooden flooring', '', 0, ''),
(406, 'white marble tile', '', 0, ''),
(407, 'black marble tile', '', 0, ''),
(408, 'trapdoor', '', 0, ''),
(409, 'trapdoor', '', 0, ''),
(410, 'stairs', '', 0, ''),
(411, 'stairs', '', 0, ''),
(412, 'sandstone tile', '', 0, ''),
(413, 'stone tile', '', 0, ''),
(414, 'tiled floor', '', 0, ''),
(415, 'stone tile', '', 0, ''),
(416, 'stone tile', 'It seems to be a switch.', 0, ''),
(417, 'stone tile', 'It seems to be a switch.', 0, ''),
(418, 'stone tile', 'There is a hole in the ceiling.', 0, ''),
(419, 'sandstone tile', '', 0, ''),
(420, 'tiled floor', '', 0, ''),
(421, 'sandstone floor', '', 0, ''),
(422, 'sandstone floor', '', 0, ''),
(423, 'stairs', '', 0, ''),
(424, 'stone tile', '', 0, ''),
(425, 'stone tile', 'It seems to be a switch.', 0, ''),
(426, 'stone tile', 'It seems to be a switch.', 0, ''),
(427, 'trapdoor', '', 0, ''),
(428, 'ladder', '', 0, ''),
(429, 'trapdoor', '', 0, ''),
(430, 'sewer grate', '', 0, ''),
(431, 'stone floor', '', 0, ''),
(432, 'stairs', '', 0, ''),
(433, 'stairs', '', 0, ''),
(434, 'wooden floor', '', 0, ''),
(435, 'wooden floor', '', 0, ''),
(436, 'wooden floor', '', 0, ''),
(437, 'wooden floor', '', 0, ''),
(438, 'wooden floor', '', 0, ''),
(439, 'wooden floor', '', 0, ''),
(440, 'wooden floor', '', 0, ''),
(441, 'wooden floor', '', 0, ''),
(442, 'wooden floor', '', 0, ''),
(443, 'wooden floor', '', 0, ''),
(444, 'wooden floor', '', 0, ''),
(445, 'wooden floor', '', 0, ''),
(446, 'wooden floor', 'It seems to be a switch.', 0, ''),
(447, 'wooden floor', 'It seems to be a switch.', 0, ''),
(448, 'wooden floor', '', 0, ''),
(449, 'wooden floor', '', 0, ''),
(450, 'wooden floor', '', 0, ''),
(451, 'wooden floor', '', 0, ''),
(452, 'wooden floor', '', 0, ''),
(453, 'wooden floor', '', 0, ''),
(454, 'wooden floor', '', 0, ''),
(455, 'wooden floor', '', 0, ''),
(456, 'wooden floor', '', 0, ''),
(457, 'white stone tile', '', 0, ''),
(458, 'wooden floor', '', 0, ''),
(459, 'stairs', '', 0, ''),
(460, 'void', '', 0, ''),
(461, 'closed trapdoor', '', 0, ''),
(462, 'open trapdoor', '', 0, ''),
(463, 'pedestal', '', 0, ''),
(464, 'sandstone wall', '', 0, ''),
(465, 'stone tile', 'It seems to be a switch.', 0, ''),
(466, 'sandstone wall', '', 0, ''),
(467, 'stone tile', 'It seems to be a switch.', 0, ''),
(468, 'loose stone pile', '', 0, ''),
(469, 'hole', '', 0, ''),
(470, 'hole', '', 0, ''),
(471, 'time tile', '', 0, ''),
(472, 'time tile', '', 0, ''),
(473, 'time tile', '', 0, ''),
(474, 'time tile', '', 0, ''),
(475, 'hole', '', 0, ''),
(476, 'hole', '', 0, ''),
(477, 'ramp', '', 0, ''),
(478, 'ramp', '', 0, ''),
(479, 'hole', '', 0, ''),
(480, 'hole', '', 0, ''),
(481, 'loose stone pile', '', 0, ''),
(482, 'hole', '', 0, ''),
(483, 'loose ice pile', '', 0, ''),
(484, 'hole', '', 0, ''),
(485, 'hole', '', 0, ''),
(486, 'heap of snow', '', 0, ''),
(487, 'ramp', '', 0, ''),
(488, 'ramp', '', 0, ''),
(489, 'hole', '', 0, ''),
(490, 'water', 'You see the silvery movement of fish.', 0, ''),
(491, 'water', '', 0, ''),
(492, 'water', '', 0, ''),
(493, 'water', '', 0, ''),
(494, 'water', '', 0, ''),
(495, 'water', '', 0, ''),
(496, 'water', '', 0, ''),
(497, 'water', '', 0, ''),
(498, 'water', '', 0, ''),
(499, 'water', '', 0, ''),
(500, 'water', '', 0, ''),
(501, 'water', '', 0, ''),
(502, 'water', '', 0, ''),
(503, 'water', '', 0, ''),
(504, 'water', '', 0, ''),
(505, 'water', '', 0, ''),
(506, 'water', '', 0, ''),
(507, 'water', '', 0, ''),
(508, 'water', '', 0, ''),
(509, 'water', '', 0, ''),
(510, 'water', '', 0, ''),
(511, 'water', '', 0, ''),
(512, 'water', '', 0, ''),
(513, 'water', '', 0, ''),
(514, 'water', '', 0, ''),
(515, 'water', '', 0, ''),
(516, 'water', '', 0, ''),
(517, 'water', '', 0, ''),
(518, 'lava', '', 0, ''),
(519, 'lava', '', 0, ''),
(520, 'lava', '', 0, ''),
(521, 'lava', '', 0, ''),
(522, 'lava', '', 0, ''),
(523, 'lava', '', 0, ''),
(524, 'lava', '', 0, ''),
(525, 'lava', '', 0, ''),
(526, 'lava', '', 0, ''),
(527, 'lava', '', 0, ''),
(528, 'lava', '', 0, ''),
(529, 'lava', '', 0, ''),
(530, 'swamp', '', 0, ''),
(531, 'swamp', '', 0, ''),
(532, 'swamp', '', 0, ''),
(533, 'swamp', '', 0, ''),
(534, 'swamp', '', 0, ''),
(535, 'swamp', '', 0, ''),
(536, 'swamp', '', 0, ''),
(537, 'swamp', '', 0, ''),
(538, 'swamp', '', 0, ''),
(539, 'swamp', '', 0, ''),
(540, 'swamp', '', 0, ''),
(541, 'swamp', '', 0, ''),
(542, 'lava', '', 0, ''),
(543, 'lava', '', 0, ''),
(544, 'lava', '', 0, ''),
(545, 'lava', '', 0, ''),
(546, 'lava', '', 0, ''),
(547, 'lava', '', 0, ''),
(548, 'lava', '', 0, ''),
(549, 'lava', '', 0, ''),
(550, 'lava', '', 0, ''),
(551, 'lava', '', 0, ''),
(552, 'lava', '', 0, ''),
(553, 'lava', '', 0, ''),
(554, 'lava', '', 0, ''),
(555, 'lava', '', 0, ''),
(556, 'lava', '', 0, ''),
(557, 'lava', '', 0, ''),
(558, 'lava', '', 0, ''),
(559, 'lava', '', 0, ''),
(560, 'lava', '', 0, ''),
(561, 'lava', '', 0, ''),
(562, 'lava', '', 0, ''),
(563, 'lava', '', 0, ''),
(564, 'lava', '', 0, ''),
(565, 'lava', '', 0, ''),
(566, 'water', '', 0, ''),
(567, 'water', '', 0, ''),
(568, 'water', '', 0, ''),
(569, 'water', '', 0, ''),
(570, 'water', '', 0, ''),
(571, 'water', '', 0, ''),
(572, 'water', '', 0, ''),
(573, 'water', '', 0, ''),
(574, 'water', '', 0, ''),
(575, 'water', '', 0, ''),
(576, 'water', '', 0, ''),
(577, 'water', '', 0, ''),
(578, 'water', '', 0, ''),
(579, 'water', '', 0, ''),
(580, 'water', '', 0, ''),
(581, 'water', '', 0, ''),
(582, 'water', '', 0, ''),
(583, 'water', '', 0, ''),
(584, 'water', '', 0, ''),
(585, 'water', '', 0, ''),
(586, 'water', '', 0, ''),
(587, 'water', '', 0, ''),
(588, 'water', '', 0, ''),
(589, 'water', '', 0, ''),
(590, 'water', '', 0, ''),
(591, 'water', '', 0, ''),
(592, 'water', '', 0, ''),
(593, 'water', '', 0, ''),
(594, 'water', '', 0, ''),
(595, 'water', '', 0, ''),
(596, 'water', '', 0, ''),
(597, 'water', '', 0, ''),
(598, 'lava', '', 0, ''),
(599, 'lava', '', 0, ''),
(600, 'lava', '', 0, ''),
(601, 'lava', '', 0, ''),
(602, 'swamp', '', 0, ''),
(603, 'swamp', '', 0, ''),
(604, 'swamp', '', 0, ''),
(605, 'swamp', '', 0, ''),
(606, 'water', '', 0, ''),
(607, 'water', '', 0, ''),
(608, 'water', '', 0, ''),
(609, 'water', '', 0, ''),
(610, 'water', '', 0, ''),
(611, 'water', '', 0, ''),
(612, 'water', '', 0, ''),
(613, 'water', '', 0, ''),
(614, 'water', '', 0, ''),
(615, 'water', '', 0, ''),
(616, 'water', '', 0, ''),
(617, 'water', '', 0, ''),
(618, 'water', '', 0, ''),
(619, 'water', '', 0, ''),
(620, 'water', '', 0, ''),
(621, 'water', '', 0, ''),
(622, 'water', '', 0, ''),
(623, 'water', '', 0, ''),
(624, 'water', '', 0, ''),
(625, 'water', '', 0, ''),
(626, 'water', '', 0, ''),
(627, 'water', '', 0, ''),
(628, 'water', '', 0, ''),
(629, 'water', '', 0, ''),
(630, 'water', '', 0, ''),
(631, 'water', '', 0, ''),
(632, 'water', '', 0, ''),
(633, 'water', '', 0, ''),
(634, 'water', '', 0, ''),
(635, 'water', '', 0, ''),
(636, 'water', '', 0, ''),
(637, 'water', '', 0, ''),
(638, 'swamp', '', 0, ''),
(639, 'swamp', '', 0, ''),
(640, 'swamp', '', 0, ''),
(641, 'swamp', '', 0, ''),
(642, 'swamp', '', 0, ''),
(643, 'swamp', '', 0, ''),
(644, 'swamp', '', 0, ''),
(645, 'swamp', '', 0, ''),
(646, 'swamp', '', 0, ''),
(647, 'swamp', '', 0, ''),
(648, 'swamp', '', 0, ''),
(649, 'swamp', '', 0, ''),
(650, 'swamp', '', 0, ''),
(651, 'swamp', '', 0, ''),
(652, 'swamp', '', 0, ''),
(653, 'swamp', '', 0, ''),
(654, 'swamp', '', 0, ''),
(655, 'swamp', '', 0, ''),
(656, 'swamp', '', 0, ''),
(657, 'swamp', '', 0, ''),
(658, 'water', '', 0, ''),
(659, 'water', '', 0, ''),
(660, 'water', '', 0, ''),
(661, 'water', '', 0, ''),
(662, 'water', '', 0, ''),
(663, 'water', '', 0, ''),
(664, 'water', '', 0, ''),
(665, 'water', '', 0, ''),
(666, 'water', '', 0, ''),
(667, 'water', '', 0, ''),
(668, 'water', '', 0, ''),
(669, 'water', '', 0, ''),
(670, 'snow', '', 0, ''),
(671, 'ice', '', 0, ''),
(672, 'grass', '', 0, ''),
(673, 'grass', '', 0, ''),
(674, 'grass', '', 0, ''),
(675, 'grass', '', 0, ''),
(676, 'grass', '', 0, ''),
(677, 'grass', '', 0, ''),
(678, 'grass', '', 0, ''),
(679, 'grass', '', 0, ''),
(680, 'grass', '', 0, ''),
(681, 'grass', '', 0, ''),
(682, 'grass', '', 0, ''),
(683, 'grass', '', 0, ''),
(684, 'ice', '', 0, ''),
(685, 'ice', '', 0, ''),
(686, 'ice', '', 0, ''),
(687, 'ice', '', 0, ''),
(688, 'ice', '', 0, ''),
(689, 'ice', '', 0, ''),
(690, 'ice', '', 0, ''),
(691, 'ice', '', 0, ''),
(692, 'ice', '', 0, ''),
(693, 'ice', '', 0, ''),
(694, 'ice', '', 0, ''),
(695, 'ice', '', 0, ''),
(696, 'ice', '', 0, ''),
(697, 'ice', '', 0, ''),
(698, 'ice', '', 0, ''),
(699, 'ice', '', 0, ''),
(700, 'ice', '', 0, ''),
(701, 'ice', '', 0, ''),
(702, 'ice', '', 0, ''),
(703, 'ice', '', 0, ''),
(704, 'ice', '', 0, ''),
(705, 'ice', '', 0, ''),
(706, 'ice', '', 0, ''),
(707, 'ice', '', 0, ''),
(708, 'tar', '', 0, ''),
(709, 'tar', '', 0, ''),
(710, 'tar', '', 0, ''),
(711, 'tar', '', 0, ''),
(712, 'tar', '', 0, ''),
(713, 'tar', '', 0, ''),
(714, 'tar', '', 0, ''),
(715, 'tar', '', 0, ''),
(716, 'tar', '', 0, ''),
(717, 'tar', '', 0, ''),
(718, 'tar', '', 0, ''),
(719, 'tar', '', 0, ''),
(720, 'tar', '', 0, ''),
(721, 'tar', '', 0, ''),
(722, 'tar', '', 0, ''),
(723, 'tar', '', 0, ''),
(724, 'cobbled pavement', '', 0, ''),
(725, 'cobbled pavement', '', 0, ''),
(726, 'cobbled pavement', '', 0, ''),
(727, 'cobbled pavement', '', 0, ''),
(728, 'cobbled pavement', '', 0, ''),
(729, 'cobbled pavement', '', 0, ''),
(730, 'cobbled pavement', '', 0, ''),
(731, 'cobbled pavement', '', 0, ''),
(732, 'cobbled pavement', '', 0, ''),
(733, 'cobbled pavement', '', 0, ''),
(734, 'cobbled pavement', '', 0, ''),
(735, 'cobbled pavement', '', 0, ''),
(736, 'cobbled pavement', '', 0, ''),
(737, 'cobbled pavement', '', 0, ''),
(738, 'cobbled pavement', '', 0, ''),
(739, 'cobbled pavement', '', 0, ''),
(740, 'cobbled pavement', '', 0, ''),
(741, 'cobbled pavement', '', 0, ''),
(742, 'cobbled pavement', '', 0, ''),
(743, 'cobbled pavement', '', 0, ''),
(744, 'cobbled pavement', '', 0, ''),
(745, 'cobbled pavement', '', 0, ''),
(746, 'cobbled pavement', '', 0, ''),
(747, 'cobbled pavement', '', 0, ''),
(748, 'cobbled pavement', '', 0, ''),
(749, 'cobbled pavement', '', 0, ''),
(750, 'cobbled pavement', '', 0, ''),
(751, 'cobbled pavement', '', 0, ''),
(752, 'cobbled pavement', '', 0, ''),
(753, 'cobbled pavement', '', 0, ''),
(754, 'cobbled pavement', '', 0, ''),
(755, 'cobbled pavement', '', 0, ''),
(756, 'cobbled pavement', '', 0, ''),
(757, 'cobbled pavement', '', 0, ''),
(758, 'cobbled pavement', '', 0, ''),
(759, 'cobbled pavement', '', 0, ''),
(760, 'cobbled pavement', '', 0, ''),
(761, 'cobbled pavement', '', 0, ''),
(762, 'cobbled pavement', '', 0, ''),
(763, 'cobbled pavement', '', 0, ''),
(764, 'cobbled pavement', '', 0, ''),
(765, 'cobbled pavement', '', 0, ''),
(766, 'cobbled pavement', '', 0, ''),
(767, 'cobbled pavement', '', 0, ''),
(768, 'cobbled pavement', '', 0, ''),
(769, 'cobbled pavement', '', 0, ''),
(770, 'cobbled pavement', '', 0, ''),
(771, 'cobbled pavement', '', 0, ''),
(772, 'cobbled pavement', '', 0, ''),
(773, 'cobbled pavement', '', 0, ''),
(774, 'cobbled pavement', '', 0, ''),
(775, 'cobbled pavement', '', 0, ''),
(776, 'cobbled pavement', '', 0, ''),
(777, 'sandstone floor', '', 0, ''),
(778, 'sandstone floor', '', 0, ''),
(779, 'sandstone floor', '', 0, ''),
(780, 'sandstone floor', '', 0, ''),
(781, 'sandstone floor', '', 0, ''),
(782, 'sandstone floor', '', 0, ''),
(783, 'sandstone floor', '', 0, ''),
(784, 'sandstone floor', '', 0, ''),
(785, 'sandstone floor', '', 0, ''),
(786, 'sandstone floor', '', 0, ''),
(787, 'sandstone floor', '', 0, ''),
(788, 'sandstone floor', '', 0, ''),
(789, 'sandstone floor', '', 0, ''),
(790, 'sandstone floor', '', 0, ''),
(792, 'grass', '', 0, ''),
(791, 'grass', '', 0, ''),
(804, 'dirt', '', 0, ''),
(806, 'dirt', '', 0, ''),
(836, 'sand', '', 0, ''),
(873, 'mountain', '', 0, ''),
(874, 'mountain', '', 0, ''),
(875, 'mountain', '', 0, ''),
(876, 'mountain', '', 0, ''),
(877, 'mountain', '', 0, ''),
(878, 'mountain', '', 0, ''),
(891, 'rocks', '', 0, ''),
(892, 'rocks', '', 0, ''),
(893, 'rocks', '', 0, ''),
(894, 'rocks', '', 0, ''),
(895, 'rocks', '', 0, ''),
(896, 'rocks', '', 0, ''),
(897, 'rocks', '', 0, ''),
(898, 'rocks', '', 0, ''),
(899, 'rocks', '', 0, ''),
(900, 'rocks', '', 0, ''),
(901, 'rocks', '', 0, ''),
(902, 'rocks', '', 0, ''),
(903, 'mountain', '', 0, ''),
(904, 'mountain', '', 0, ''),
(905, 'mountain', '', 0, ''),
(906, 'mountain', '', 0, ''),
(907, 'mountain', '', 0, ''),
(908, 'mountain', '', 0, ''),
(909, 'mountain', '', 0, ''),
(910, 'mountain', '', 0, ''),
(911, 'mountain', '', 0, ''),
(912, 'mountain', '', 0, ''),
(913, 'mountain', '', 0, ''),
(914, 'archway', '', 0, ''),
(915, 'archway', '', 0, ''),
(916, 'archway', '', 0, ''),
(917, 'archway', '', 0, ''),
(918, 'mountain', '', 0, ''),
(919, 'mountain', '', 0, ''),
(920, 'flat roof', '', 0, ''),
(921, 'flat roof', '', 0, ''),
(922, 'flat roof', '', 0, ''),
(923, 'flat roof', '', 0, ''),
(924, 'trapdoor', '', 0, ''),
(925, 'tiled roof', '', 0, ''),
(926, 'tiled roof', '', 0, ''),
(927, 'tiled roof', '', 0, ''),
(928, 'tiled roof', '', 0, ''),
(929, 'tiled roof', '', 0, ''),
(930, 'tiled roof', '', 0, ''),
(931, 'tiled roof', '', 0, ''),
(932, 'tiled roof', '', 0, ''),
(933, 'tiled roof', '', 0, ''),
(934, 'tiled roof', '', 0, ''),
(935, 'tiled roof', '', 0, ''),
(936, 'tiled roof', '', 0, ''),
(937, 'tiled roof', '', 0, ''),
(938, 'tiled roof', '', 0, ''),
(939, 'tiled roof', '', 0, ''),
(940, 'tiled roof', '', 0, ''),
(941, 'tiled roof', '', 0, ''),
(942, 'tiled roof', '', 0, ''),
(943, 'tiled roof', '', 0, ''),
(944, 'tiled roof', '', 0, ''),
(945, 'wooden roof', '', 0, ''),
(946, 'wooden roof', '', 0, ''),
(947, 'wooden roof', '', 0, ''),
(948, 'wooden roof', '', 0, ''),
(949, 'wooden roof', '', 0, ''),
(950, 'wooden roof', '', 0, ''),
(951, 'wooden roof', '', 0, ''),
(952, 'wooden roof', '', 0, ''),
(953, 'wooden roof', '', 0, ''),
(954, 'wooden roof', '', 0, ''),
(955, 'wooden roof', '', 0, ''),
(956, 'wooden roof', '', 0, ''),
(957, 'wooden roof', '', 0, ''),
(958, 'wooden roof', '', 0, ''),
(959, 'wooden roof', '', 0, ''),
(960, 'wooden roof', '', 0, ''),
(961, 'wooden roof', '', 0, ''),
(962, 'wooden roof', '', 0, ''),
(963, 'wooden roof', '', 0, ''),
(964, 'wooden roof', '', 0, ''),
(965, 'chess board', '', 0, ''),
(966, 'chess board', '', 0, ''),
(967, 'mill board', '', 0, ''),
(968, 'mill board', '', 0, ''),
(969, 'mill board', '', 0, ''),
(970, 'mill board', '', 0, ''),
(971, 'mill board', '', 0, ''),
(972, 'mill board', '', 0, ''),
(973, 'mill board', '', 0, ''),
(974, 'mill board', '', 0, ''),
(975, 'mill board', '', 0, ''),
(976, 'mill board', '', 0, ''),
(977, 'mill board', '', 0, ''),
(978, 'mill board', '', 0, ''),
(979, 'mill board', '', 0, ''),
(980, 'mill board', '', 0, ''),
(981, 'mill board', '', 0, ''),
(982, 'mill board', '', 0, ''),
(983, 'mill board', '', 0, ''),
(984, 'mill board', '', 0, ''),
(985, 'mill board', '', 0, ''),
(986, 'mill board', '', 0, ''),
(987, 'mill board', '', 0, ''),
(988, 'mill board', '', 0, ''),
(989, 'mill board', '', 0, ''),
(990, 'mill board', '', 0, ''),
(991, 'mill board', '', 0, ''),
(992, 'mill board', '', 0, ''),
(993, 'mill board', '', 0, ''),
(994, 'mill board', '', 0, ''),
(995, 'mill board', '', 0, ''),
(996, 'mill board', '', 0, ''),
(997, 'mill board', '', 0, ''),
(998, 'mill board', '', 0, ''),
(999, 'mill board', '', 0, ''),
(1000, 'mill board', '', 0, ''),
(1001, 'mill board', '', 0, ''),
(1002, 'mill board', '', 0, ''),
(1003, 'mill board', '', 0, ''),
(1004, 'mill board', '', 0, ''),
(1005, 'mill board', '', 0, ''),
(1006, 'mill board', '', 0, ''),
(1007, 'mill board', '', 0, ''),
(1008, 'mill board', '', 0, ''),
(1009, 'mill board', '', 0, ''),
(1010, 'mill board', '', 0, ''),
(1011, 'mill board', '', 0, ''),
(1012, 'mill board', '', 0, ''),
(1013, 'mill board', '', 0, ''),
(1014, 'mill board', '', 0, ''),
(1015, 'mill board', '', 0, ''),
(1016, 'tic-tac-toe board', '', 0, ''),
(1017, 'tic-tac-toe board', '', 0, ''),
(1018, 'tic-tac-toe board', '', 0, ''),
(1019, 'tic-tac-toe board', '', 0, ''),
(1020, 'tic-tac-toe board', '', 0, ''),
(1021, 'tic-tac-toe board', '', 0, ''),
(1022, 'tic-tac-toe board', '', 0, ''),
(1023, 'tic-tac-toe board', '', 0, ''),
(1024, 'tic-tac-toe board', '', 0, ''),
(1025, 'brick wall', '', 0, ''),
(1026, 'brick wall', '', 0, ''),
(1027, 'brick wall', '', 0, ''),
(1028, 'brick wall', '', 0, ''),
(1029, 'brick wall', '', 0, ''),
(1030, 'brick wall', '', 0, ''),
(1031, 'brick wall', '', 0, ''),
(1032, 'brick wall', '', 0, ''),
(1033, 'brick wall', '', 0, ''),
(1034, 'brick wall', '', 0, ''),
(1035, 'brick wall', '', 0, ''),
(1036, 'framework wall', '', 0, ''),
(1037, 'framework wall', '', 0, ''),
(1038, 'framework wall', '', 0, ''),
(1039, 'framework wall', '', 0, ''),
(1040, 'framework wall', '', 0, ''),
(1041, 'framework wall', '', 0, ''),
(1042, 'framework wall', '', 0, ''),
(1043, 'framework wall', '', 0, ''),
(1044, 'framework wall', '', 0, ''),
(1045, 'framework wall', '', 0, ''),
(1046, 'framework wall', '', 0, ''),
(1047, 'framework wall', '', 0, ''),
(1048, 'framework wall', '', 0, ''),
(1049, 'stone wall', '', 0, ''),
(1050, 'stone wall', '', 0, ''),
(1051, 'stone wall', '', 0, ''),
(1052, 'stone wall', '', 0, ''),
(1053, 'stone wall', '', 0, ''),
(1054, 'stone wall', '', 0, ''),
(1055, 'stone wall', '', 0, ''),
(1056, 'stone wall', '', 0, ''),
(1057, 'stone wall', '', 0, ''),
(1058, 'stone wall', '', 0, ''),
(1059, 'stone wall', '', 0, ''),
(1060, 'sandstone wall', '', 0, ''),
(1061, 'sandstone wall', '', 0, ''),
(1062, 'sandstone wall', '', 0, ''),
(1063, 'sandstone wall', '', 0, ''),
(1064, 'sandstone wall', '', 0, ''),
(1065, 'sandstone wall', '', 0, ''),
(1066, 'sandstone wall', '', 0, ''),
(1067, 'sandstone wall', '', 0, ''),
(1068, 'sandstone wall', '', 0, ''),
(1069, 'sandstone wall', '', 0, ''),
(1070, 'sandstone wall', '', 0, ''),
(1071, 'sandstone', '', 0, ''),
(1072, 'sandstone roof', '', 0, ''),
(1073, 'sandstone roof', '', 0, ''),
(1074, 'sandstone roof', '', 0, ''),
(1075, 'sandstone roof', '', 0, ''),
(1076, 'sandstone roof', '', 0, ''),
(1077, 'sandstone roof', '', 0, ''),
(1078, 'sandstone roof', '', 0, ''),
(1079, 'sandstone roof', '', 0, ''),
(1080, 'sandstone roof', '', 0, ''),
(1081, 'sandstone roof', '', 0, ''),
(1082, 'sandstone roof', '', 0, ''),
(1083, 'sandstone roof', '', 0, ''),
(1084, 'broken wall', '', 0, ''),
(1085, 'broken wall', '', 0, ''),
(1086, 'broken wall', '', 0, ''),
(1087, 'broken wall', '', 0, ''),
(1088, 'broken wall', '', 0, ''),
(1089, 'metal wall', '', 0, ''),
(1090, 'metal wall', '', 0, ''),
(1091, 'metal wall', '', 0, ''),
(1092, 'metal wall', '', 0, ''),
(1093, 'metal wall', '', 0, ''),
(1095, 'metal wall', '', 0, ''),
(1096, 'metal wall', '', 0, ''),
(1097, 'metal wall', '', 0, ''),
(1098, 'metal wall', '', 0, ''),
(1099, 'metal wall', '', 0, ''),
(1100, 'sandstone wall', '', 0, ''),
(1101, 'sandstone wall', '', 0, ''),
(1102, 'sandstone wall', '', 0, ''),
(1103, 'sandstone wall', '', 0, ''),
(1104, 'sandstone wall', '', 0, ''),
(1105, 'sandstone wall', '', 0, ''),
(1106, 'sandstone wall', '', 0, ''),
(1107, 'sandstone wall', '', 0, ''),
(1108, 'sandstone wall', '', 0, ''),
(1109, 'sandstone wall', '', 0, ''),
(1110, 'sandstone wall', '', 0, ''),
(1111, 'white stone wall', '', 0, ''),
(1112, 'white stone wall', '', 0, ''),
(1113, 'white stone wall', '', 0, ''),
(1114, 'white stone wall', '', 0, ''),
(1115, 'white stone wall', '', 0, ''),
(1116, 'white stone wall', '', 0, ''),
(1117, 'white stone wall', '', 0, ''),
(1118, 'white stone wall', '', 0, ''),
(1119, 'white stone wall', '', 0, ''),
(1120, 'archway', '', 0, ''),
(1121, 'archway', '', 0, ''),
(1122, 'archway', '', 0, ''),
(1123, 'archway', '', 0, ''),
(1124, 'archway', '', 0, ''),
(1125, 'archway', '', 0, ''),
(1126, 'archway', '', 0, ''),
(1127, 'archway', '', 0, ''),
(1128, 'ornamented wall', '', 0, ''),
(1129, 'ornamented wall', '', 0, ''),
(1130, 'ornamented wall', '', 0, ''),
(1131, 'ornamented wall', '', 0, ''),
(1132, 'ornamented wall', '', 0, ''),
(1133, 'ornamented wall', '', 0, ''),
(1134, 'ornamented wall', '', 0, ''),
(1135, 'ornamented wall', '', 0, ''),
(1136, 'ornamented wall', '', 0, ''),
(1137, 'ornamented wall', '', 0, ''),
(1138, 'ornamented wall', '', 0, ''),
(1139, 'ornamented wall', '', 0, ''),
(1140, 'ornamented wall', '', 0, ''),
(1141, 'ornamented wall', '', 0, ''),
(1142, 'ornamented wall', '', 0, ''),
(1143, 'ornamented wall', '', 0, ''),
(1144, 'ornamented wall', '', 0, ''),
(1145, 'ornamented wall', '', 0, ''),
(1146, 'ornamented wall', '', 0, ''),
(1147, 'ornamented wall', '', 0, ''),
(1148, 'ornamented wall', '', 0, ''),
(1149, 'ornamented wall', '', 0, ''),
(1150, 'ornamented wall', '', 0, ''),
(1151, 'ornamented wall', '', 0, ''),
(1152, 'ornamented wall', '', 0, ''),
(1153, 'ornamented wall', '', 0, ''),
(1154, 'wall fountain', '', 0, ''),
(1155, 'wall fountain', '', 0, ''),
(1156, 'wall fountain', '', 0, ''),
(1157, 'wall fountain', '', 0, ''),
(1158, 'archway', '', 0, ''),
(1159, 'archway', '', 0, ''),
(1160, 'archway', '', 0, ''),
(1161, 'archway', '', 0, ''),
(1162, 'archway', '', 0, ''),
(1163, 'archway', '', 0, ''),
(1164, 'ornamented wall', '', 0, ''),
(1165, 'ornamented wall', '', 0, ''),
(1166, 'ornamented wall', '', 0, ''),
(1167, 'ornamented wall', '', 0, ''),
(1168, 'ornamented wall', '', 0, ''),
(1169, 'ornamented wall', '', 0, ''),
(1170, 'paravent', '', 0, ''),
(1171, 'paravent', '', 0, ''),
(1172, 'paravent', '', 0, ''),
(1173, 'paravent', '', 0, ''),
(1174, 'paravent', '', 0, ''),
(1175, 'paravent', '', 0, ''),
(1176, 'ornamented wall', '', 0, ''),
(1177, 'ornamented wall', '', 0, ''),
(1178, 'ornamented wall', '', 0, ''),
(1179, 'ornamented wall', '', 0, ''),
(1180, 'ornamented wall', '', 0, ''),
(1181, 'ornamented wall', '', 0, ''),
(1182, 'ornamented wall', '', 0, ''),
(1183, 'ornamented wall', '', 0, ''),
(1184, 'ornamented wall', '', 0, ''),
(1185, 'ornamented wall', '', 0, ''),
(1186, 'ornamented wall', '', 0, ''),
(1187, 'ornamented wall', '', 0, ''),
(1188, 'ornamented wall', '', 0, ''),
(1189, 'ornamented wall', '', 0, ''),
(1190, 'ornamented wall', '', 0, ''),
(1191, 'ornamented wall', '', 0, ''),
(1192, 'ornamented wall', '', 0, ''),
(1193, 'ornamented wall', '', 0, ''),
(1194, 'wall fountain', '', 0, ''),
(1195, 'wall fountain', '', 0, ''),
(1196, 'lava wall', '', 0, ''),
(1197, 'lava wall', '', 0, ''),
(1198, 'lava wall', '', 0, ''),
(1199, 'lava wall', '', 0, ''),
(1200, 'lava wall', '', 0, ''),
(1201, 'lava wall', '', 0, ''),
(1202, 'lava wall', '', 0, ''),
(1203, 'lava wall', '', 0, ''),
(1204, 'lava wall', '', 0, ''),
(1205, 'archway', '', 0, ''),
(1206, 'archway', '', 0, ''),
(1207, 'archway', '', 0, ''),
(1208, 'archway', '', 0, ''),
(1209, 'closed door', 'It is locked.', 0, ''),
(1210, 'closed door', 'It is locked.', 0, ''),
(1211, 'open door', '', 0, ''),
(1212, 'closed door', 'It is locked.', 0, ''),
(1213, 'closed door', '', 0, ''),
(1214, 'open door', '', 0, ''),
(1215, 'buttress', '', 0, ''),
(1216, 'buttress', '', 0, ''),
(1217, 'buttress', '', 0, ''),
(1218, 'buttress', '', 0, ''),
(1219, 'closed door', '', 0, ''),
(1220, 'open door', '', 0, ''),
(1221, 'closed door', '', 0, ''),
(1222, 'open door', '', 0, ''),
(1223, 'closed door', '', 0, ''),
(1224, 'open door', '', 0, ''),
(1225, 'closed door', '', 0, ''),
(1226, 'open door', '', 0, ''),
(1227, 'gate of expertise', '', 0, ''),
(1228, 'gate of expertise', '', 0, ''),
(1229, 'gate of expertise', '', 0, ''),
(1230, 'gate of expertise', '', 0, ''),
(1231, 'closed door', 'It is locked.', 0, ''),
(1232, 'closed door', '', 0, ''),
(1233, 'open door', '', 0, ''),
(1234, 'closed door', 'It is locked.', 0, ''),
(1235, 'closed door', '', 0, ''),
(1236, 'open door', '', 0, ''),
(1237, 'closed door', '', 0, ''),
(1238, 'open door', '', 0, ''),
(1239, 'closed door', '', 0, ''),
(1240, 'open door', '', 0, ''),
(1241, 'closed door', '', 0, ''),
(1242, 'open door', '', 0, ''),
(1243, 'closed door', '', 0, ''),
(1244, 'open door', '', 0, ''),
(1245, 'gate of expertise', '', 0, ''),
(1246, 'gate of expertise', '', 0, ''),
(1247, 'gate of expertise', '', 0, ''),
(1248, 'gate of expertise', '', 0, ''),
(1249, 'closed door', 'It is locked.', 0, ''),
(1250, 'closed door', '', 0, ''),
(1251, 'open door', '', 0, ''),
(1252, 'closed door', 'It is locked.', 0, ''),
(1253, 'closed door', '', 0, ''),
(1254, 'open door', '', 0, ''),
(1255, 'closed door', '', 0, ''),
(1256, 'open door', '', 0, ''),
(1257, 'closed door', '', 0, ''),
(1258, 'open door', '', 0, ''),
(1259, 'gate of expertise', '', 0, ''),
(1260, 'gate of expertise', '', 0, ''),
(1261, 'gate of expertise', '', 0, ''),
(1262, 'gate of expertise', '', 0, ''),
(1263, 'framework window', '', 0, ''),
(1264, 'framework window', '', 0, ''),
(1265, 'brick window', '', 0, ''),
(1266, 'brick window', '', 0, ''),
(1267, 'stone window', '', 0, ''),
(1268, 'stone window', '', 0, ''),
(1269, 'white stone wall window', '', 0, ''),
(1270, 'white stone wall window', '', 0, ''),
(1271, 'white stone wall window', '', 0, ''),
(1272, 'white stone wall window', '', 0, ''),
(1273, 'sandstone window', '', 0, ''),
(1274, 'sandstone window', '', 0, ''),
(1275, 'sandstone window', '', 0, ''),
(1276, 'sandstone window', '', 0, ''),
(1277, 'wooden pillar', '', 0, ''),
(1278, 'sail', '', 0, ''),
(1279, 'sail', '', 0, ''),
(1280, 'rudder of the boat', '', 0, ''),
(1281, 'rudder of the boat', '', 0, ''),
(1282, 'rudder of the boat', '', 0, ''),
(1283, 'rudder of the boat', '', 0, ''),
(1284, 'drawbridge', '', 0, ''),
(1285, 'stone', '', 0, ''),
(1286, 'stone', '', 0, ''),
(1287, 'stone', '', 0, ''),
(1288, 'stone', '', 0, ''),
(1289, 'stone', '', 0, ''),
(1290, 'stone', '', 0, ''),
(1291, 'stone', '', 0, ''),
(1292, 'stone', '', 0, ''),
(1293, 'stone', '', 0, ''),
(1294, 'small stone', '', 0, 'distance'),
(1295, 'stone', '', 0, ''),
(1296, 'stone', '', 0, ''),
(1297, 'stone', '', 0, ''),
(1298, 'stone', '', 0, ''),
(1299, 'stone', '', 0, ''),
(1300, 'stone', '', 0, ''),
(1301, 'stone', '', 0, ''),
(1302, 'stone', '', 0, ''),
(1303, 'stone', '', 0, ''),
(1304, 'stone', '', 0, ''),
(1305, 'stone', '', 0, ''),
(1306, 'stone', '', 0, ''),
(1307, 'stone', '', 0, ''),
(1308, 'stone', '', 0, ''),
(1309, 'stone', '', 0, ''),
(1310, 'stone', '', 0, ''),
(1311, 'stone', '', 0, ''),
(1312, 'stone', '', 0, ''),
(1313, 'stone', '', 0, ''),
(1314, 'stone', '', 0, ''),
(1315, 'stone', '', 0, ''),
(1316, 'stone', '', 0, ''),
(1317, 'stone', '', 0, ''),
(1318, 'stone', '', 0, ''),
(1319, 'stone', '', 0, ''),
(1320, 'stone', '', 0, ''),
(1321, 'stone', '', 0, ''),
(1322, 'stone', '', 0, ''),
(1323, 'stone', '', 0, ''),
(1324, 'stone', '', 0, ''),
(1325, 'stone', '', 0, ''),
(1326, 'stone', '', 0, ''),
(1327, 'stone', '', 0, ''),
(1328, 'stone', '', 0, ''),
(1329, 'stone', '', 0, ''),
(1330, 'stone', '', 0, ''),
(1331, 'stone', '', 0, ''),
(1332, 'stone', '', 0, ''),
(1333, 'stone', '', 0, ''),
(1334, 'stone', '', 0, ''),
(1335, 'stone', '', 0, ''),
(1336, 'stone', '', 0, ''),
(1337, 'stone', '', 0, ''),
(1338, 'stone', '', 0, ''),
(1339, 'stone', '', 0, ''),
(1340, 'stone', '', 0, ''),
(1341, 'stone', '', 0, ''),
(1342, 'stone', '', 0, ''),
(1343, 'stone', '', 0, ''),
(1344, 'stone', '', 0, ''),
(1345, 'stone', '', 0, ''),
(1346, 'stone', '', 0, ''),
(1347, 'stone', '', 0, ''),
(1348, 'stone', '', 0, ''),
(1349, 'stone', '', 0, ''),
(1350, 'stone', '', 0, ''),
(1351, 'stone', '', 0, ''),
(1352, 'stone', '', 0, ''),
(1353, 'mossy stone', '', 0, ''),
(1354, 'stone', '', 0, ''),
(1355, 'stone', '', 0, ''),
(1356, 'stone', '', 0, ''),
(1357, 'stone', '', 0, ''),
(1358, 'stone', '', 0, ''),
(1359, 'stone', '', 0, ''),
(1360, 'fountain', '', 0, ''),
(1361, 'fountain', '', 0, ''),
(1362, 'fountain', '', 0, ''),
(1363, 'fountain', '', 0, ''),
(1364, 'water basin', '', 0, ''),
(1365, 'water basin', '', 0, ''),
(1366, 'water basin', '', 0, ''),
(1367, 'water basin', '', 0, ''),
(1368, 'draw well', '', 0, ''),
(1369, 'draw well', '', 0, ''),
(1370, 'marble fountain', '', 0, ''),
(1371, 'marble fountain', '', 0, ''),
(1372, 'marble fountain', '', 0, ''),
(1373, 'marble fountain', '', 0, ''),
(1374, 'marble fountain', '', 0, ''),
(1375, 'marble fountain', '', 0, ''),
(1376, 'marble fountain', '', 0, ''),
(1377, 'marble fountain', '', 0, ''),
(1378, 'small basin', '', 0, ''),
(1379, 'mill', '', 0, ''),
(1380, 'mill', '', 0, ''),
(1381, 'mill', '', 0, ''),
(1382, 'mill', '', 0, ''),
(1383, 'mill', '', 0, ''),
(1384, 'mill', '', 0, ''),
(1385, 'stairs', '', 0, ''),
(1386, 'ladder', '', 0, ''),
(1387, 'magic forcefield', 'You can see the other side through it.', 0, ''),
(1388, 'ramp', '', 0, ''),
(1389, 'ramp', '', 0, ''),
(1390, 'ramp', '', 0, ''),
(1391, 'ramp', '', 0, ''),
(1392, 'ramp', '', 0, ''),
(1393, 'ramp', '', 0, ''),
(1394, 'ramp', '', 0, ''),
(1395, 'ramp', '', 0, ''),
(1396, 'stairs', '', 0, ''),
(1397, 'mystic flame', '', 0, ''),
(1398, 'ramp', '', 0, ''),
(1399, 'ramp', '', 0, ''),
(1400, 'ramp', '', 0, ''),
(1401, 'ramp', '', 0, ''),
(1402, 'ramp', '', 0, ''),
(1403, 'ramp', '', 0, ''),
(1404, 'ramp', '', 0, ''),
(1405, 'ramp', '', 0, ''),
(1406, 'grave', '', 0, ''),
(1407, 'gravestone', '', 0, ''),
(1408, 'gravestone', '', 0, ''),
(1409, 'gravestone', '', 0, ''),
(1410, 'stone coffin', '', 0, ''),
(1411, 'stone coffin', '', 0, ''),
(1412, 'stone coffin', '', 0, ''),
(1413, 'stone coffin', '', 0, ''),
(1414, 'stone coffin', '', 0, ''),
(1415, 'buried coffin', '', 0, ''),
(1416, 'buried coffin', '', 0, ''),
(1417, 'sarcophagus', '', 0, ''),
(1418, 'sarcophagus', '', 0, ''),
(1419, 'sarcophagus', '', 0, ''),
(1420, 'sarcophagus', '', 0, ''),
(1421, 'campfire', '', 0, ''),
(1422, 'campfire', '', 0, ''),
(1423, 'campfire', '', 0, ''),
(1424, 'campfire', '', 0, ''),
(1425, 'campfire', '', 0, ''),
(1426, 'unlit campfire', '', 0, ''),
(1427, 'campfire', '', 0, ''),
(1428, 'campfire', '', 0, ''),
(1429, 'sign', '', 0, ''),
(1430, 'sign', '', 0, ''),
(1431, 'sign', '', 0, ''),
(1432, 'sign', '', 0, ''),
(1433, 'sign', '', 0, ''),
(1434, 'sign', '', 0, ''),
(1435, 'dragon flag', '', 0, ''),
(1436, 'castle flag', '', 0, ''),
(1437, 'flag of Tibia', '', 0, ''),
(1438, 'street sign', '', 0, ''),
(1439, 'street sign', '', 0, ''),
(1440, 'sign', '', 0, ''),
(1441, 'sign', '', 0, ''),
(1442, 'statue', '', 0, ''),
(1443, 'statue', '', 0, ''),
(1444, 'hero statue', '', 0, ''),
(1445, 'monument', '', 0, ''),
(1446, 'minotaur statue', '', 0, ''),
(1447, 'goblin statue', '', 0, ''),
(1448, 'angel statue', '', 0, ''),
(1449, 'dwarven statue', '', 0, ''),
(1450, 'watchdog statue', '', 0, ''),
(1451, 'sandstone statue', '', 0, ''),
(1452, 'gargoyle statue', '', 0, ''),
(1453, 'gargoyle statue', '', 0, ''),
(1454, 'gargoyle statue', '', 0, ''),
(1455, 'gargoyle statue', '', 0, ''),
(1456, 'pedestal', '', 0, ''),
(1457, 'pedestal', '', 0, ''),
(1458, 'pedestal', '', 0, ''),
(1459, 'pedestal', '', 0, ''),
(1460, 'minotaur statue', '', 0, ''),
(1461, 'minotaur statue', '', 0, ''),
(1462, 'minotaur statue', '', 0, ''),
(1463, 'goblin statue', '', 0, ''),
(1464, 'goblin statue', '', 0, ''),
(1465, 'goblin statue', '', 0, ''),
(1466, 'pedestal', '', 0, ''),
(1467, 'cobra statue', '', 0, ''),
(1468, 'cobra statue', '', 0, ''),
(1469, 'pedestal', '', 0, ''),
(1470, 'cobra statue', '', 0, ''),
(1471, 'cobra statue', '', 0, ''),
(1472, 'cobra statue', '', 0, ''),
(1473, 'cobra statue', '', 0, ''),
(1474, 'cobra statue', '', 0, ''),
(1475, 'cobra statue', '', 0, ''),
(1476, 'statue', '', 0, ''),
(1477, 'statue', '', 0, ''),
(1478, 'statue', '', 0, ''),
(1479, 'streetlamp', '', 0, ''),
(1480, 'streetlamp', '', 0, ''),
(1481, 'coal basin', '', 0, ''),
(1482, 'coal basin', '', 0, ''),
(1483, 'coal basin', '', 0, ''),
(1484, 'coal basin', '', 0, ''),
(1485, 'coal basin', '', 0, ''),
(1486, 'stone coal basin', '', 0, ''),
(1487, 'fire field', '', 0, ''),
(1488, 'fire field', '', 0, ''),
(1489, 'fire field', '', 0, ''),
(1490, 'poison field', '', 0, ''),
(1491, 'energy field', '', 0, ''),
(1492, 'fire field', '', 0, ''),
(1493, 'fire field', '', 0, ''),
(1494, 'fire field', '', 0, ''),
(1495, 'energy field', '', 0, ''),
(1496, 'poison field', '', 0, ''),
(1497, 'magic wall', '', 0, ''),
(1498, 'magic wall', '', 0, ''),
(1499, 'rush wood', '', 0, ''),
(1500, 'fire field', '', 0, ''),
(1501, 'fire field', '', 0, ''),
(1502, 'fire field', '', 0, ''),
(1503, 'poison gas', '', 0, ''),
(1504, 'energy field', '', 0, ''),
(1505, 'gravis', '', 0, ''),
(1506, 'searing fire', '', 0, ''),
(1507, 'searing fire', '', 0, ''),
(1508, 'ashes', '', 0, ''),
(1509, 'lava', '', 0, ''),
(1510, 'slits', '', 0, ''),
(1511, 'blades', '', 0, ''),
(1512, 'holes', '', 0, ''),
(1513, 'spikes', '', 0, ''),
(1514, 'pillar', '', 0, ''),
(1515, 'marble pillar', '', 0, ''),
(1516, 'wooden railing', '', 0, ''),
(1517, 'wooden railing', '', 0, ''),
(1518, 'wooden railing', '', 0, ''),
(1519, 'wooden railing', '', 0, ''),
(1520, 'wooden railing', '', 0, ''),
(1521, 'wooden railing', '', 0, ''),
(1522, 'wooden railing', '', 0, ''),
(1523, 'wooden railing', '', 0, ''),
(1524, 'stone railing', '', 0, ''),
(1525, 'stone railing', '', 0, ''),
(1526, 'stone railing', '', 0, ''),
(1527, 'stone railing', '', 0, ''),
(1528, 'stone railing', '', 0, ''),
(1529, 'stone railing', '', 0, ''),
(1530, 'stone railing', '', 0, ''),
(1531, 'stone railing', '', 0, ''),
(1532, 'stone railing', '', 0, ''),
(1533, 'fence', '', 0, ''),
(1534, 'fence', '', 0, ''),
(1535, 'fence', '', 0, ''),
(1536, 'fence', '', 0, ''),
(1537, 'fence', '', 0, ''),
(1538, 'fence', '', 0, ''),
(1539, 'closed fence gate', '', 0, ''),
(1540, 'open fence gate', '', 0, ''),
(1541, 'closed fence gate', '', 0, ''),
(1542, 'open fence gate', '', 0, ''),
(1543, 'fence', '', 0, ''),
(1544, 'fence', '', 0, ''),
(1545, 'fence', '', 0, ''),
(1546, 'fence', '', 0, ''),
(1547, 'fence', '', 0, ''),
(1548, 'strange carving', '', 0, ''),
(1549, 'sandstone pillar', '', 0, ''),
(1550, 'sandstone statue', '', 0, ''),
(1551, 'oriental pillar', '', 0, ''),
(1552, 'ramp', '', 0, ''),
(1553, 'ramp', '', 0, ''),
(1554, 'ramp', '', 0, ''),
(1555, 'ramp', '', 0, ''),
(1556, 'ramp', '', 0, ''),
(1557, 'ramp', '', 0, ''),
(1558, 'ramp', '', 0, ''),
(1559, 'ramp', '', 0, ''),
(1560, 'obelisk', '', 0, ''),
(1561, 'broken obelisk', '', 0, ''),
(1562, 'sandstone railing', '', 0, ''),
(1563, 'sandstone railing', '', 0, ''),
(1564, 'sandstone railing', '', 0, ''),
(1565, 'sandstone railing', '', 0, ''),
(1566, 'sandstone railing', '', 0, ''),
(1567, 'sandstone railing', '', 0, ''),
(1568, 'sandstone railing', '', 0, ''),
(1569, 'sandstone railing', '', 0, ''),
(1570, 'sandstone railing', '', 0, ''),
(1571, 'sandstone railing', '', 0, ''),
(1572, 'sandstone railing', '', 0, ''),
(1573, 'sandstone railing', '', 0, ''),
(1574, 'sandstone railing', '', 0, ''),
(1575, 'sandstone railing', '', 0, ''),
(1576, 'sandstone railing', '', 0, ''),
(1577, 'sandstone railing', '', 0, ''),
(1578, 'sandstone', '', 0, ''),
(1579, 'sandstone', '', 0, ''),
(1580, 'sandstone', '', 0, ''),
(1581, 'sandstone', '', 0, ''),
(1582, 'marble railing', '', 0, ''),
(1583, 'marble railing', '', 0, ''),
(1584, 'marble railing', '', 0, ''),
(1585, 'marble railing', '', 0, ''),
(1586, 'marble railing', '', 0, ''),
(1587, 'marble railing', '', 0, ''),
(1588, 'marble railing', '', 0, ''),
(1589, 'marble railing', '', 0, ''),
(1590, 'marble railing', '', 0, ''),
(1591, 'marble railing', '', 0, ''),
(1592, 'marble railing', '', 0, ''),
(1593, 'marble railing', '', 0, ''),
(1594, 'metal railing', '', 0, ''),
(1595, 'metal railing', '', 0, ''),
(1596, 'metal railing', '', 0, ''),
(1597, 'metal railing', '', 0, ''),
(1598, 'metal railing', '', 0, ''),
(1599, 'metal railing', '', 0, ''),
(1600, 'metal railing', '', 0, ''),
(1601, 'metal railing', '', 0, ''),
(1602, 'big table', '', 0, ''),
(1603, 'big table', '', 0, ''),
(1604, 'big table', '', 0, ''),
(1605, 'big table', '', 0, ''),
(1606, 'big table', '', 0, ''),
(1607, 'big table', '', 0, ''),
(1608, 'big table', '', 0, ''),
(1609, 'big table', '', 0, ''),
(1610, 'big table', '', 0, ''),
(1611, 'big table', '', 0, ''),
(1612, 'big table', '', 0, ''),
(1613, 'big table', '', 0, ''),
(1614, 'big table', '', 0, ''),
(1615, 'square table', '', 0, ''),
(1616, 'small round table', '', 0, ''),
(1617, 'counter', '', 0, ''),
(1618, 'counter', '', 0, ''),
(1619, 'small table', '', 0, ''),
(1620, 'counter', '', 0, ''),
(1621, 'counter', '', 0, ''),
(1622, 'table', '', 0, ''),
(1623, 'table', '', 0, ''),
(1624, 'table', '', 0, ''),
(1625, 'table', '', 0, ''),
(1626, 'table', '', 0, ''),
(1627, 'table', '', 0, ''),
(1628, 'table', '', 0, ''),
(1629, 'table', '', 0, ''),
(1630, 'table', '', 0, ''),
(1631, 'table', '', 0, ''),
(1632, 'table', '', 0, ''),
(1633, 'table', '', 0, ''),
(1634, 'table', '', 0, ''),
(1635, 'table', '', 0, ''),
(1636, 'table', '', 0, ''),
(1637, 'table', '', 0, ''),
(1638, 'table', '', 0, ''),
(1639, 'table', '', 0, ''),
(1640, 'table', '', 0, ''),
(1641, 'table', '', 0, ''),
(1642, 'altar stone', '', 0, ''),
(1643, 'altar stone', '', 0, ''),
(1644, 'altar stone', '', 0, ''),
(1645, 'altar stone', '', 0, ''),
(1646, 'throne', '', 0, ''),
(1647, 'throne', '', 0, ''),
(1648, 'throne', '', 0, ''),
(1649, 'throne', '', 0, ''),
(1650, 'wooden chair', '', 0, ''),
(1651, 'wooden chair', '', 0, ''),
(1652, 'wooden chair', '', 0, ''),
(1653, 'wooden chair', '', 0, ''),
(1654, 'throne', '', 0, ''),
(1655, 'throne', '', 0, ''),
(1656, 'throne', '', 0, ''),
(1657, 'throne', '', 0, ''),
(1658, 'sofa chair', '', 0, ''),
(1659, 'sofa chair', '', 0, ''),
(1660, 'sofa chair', '', 0, ''),
(1661, 'sofa chair', '', 0, ''),
(1662, 'bench', '', 0, ''),
(1663, 'bench', '', 0, ''),
(1664, 'bench', '', 0, ''),
(1665, 'bench', '', 0, ''),
(1666, 'red cushioned chair', '', 0, ''),
(1667, 'red cushioned chair', '', 0, ''),
(1668, 'red cushioned chair', '', 0, ''),
(1669, 'red cushioned chair', '', 0, ''),
(1670, 'green cushioned chair', '', 0, ''),
(1671, 'green cushioned chair', '', 0, ''),
(1672, 'green cushioned chair', '', 0, ''),
(1673, 'green cushioned chair', '', 0, ''),
(1674, 'rocking chair', '', 0, ''),
(1675, 'rocking chair', '', 0, ''),
(1676, 'rocking chair', '', 0, ''),
(1677, 'rocking chair', '', 0, ''),
(1678, 'purple pillow', '', 0, ''),
(1679, 'green pillow', '', 0, ''),
(1680, 'red pillow', '', 0, ''),
(1681, 'blue pillow', '', 0, ''),
(1682, 'orange pillow', '', 0, ''),
(1683, 'turqoise pillow', '', 0, ''),
(1684, 'white pillow', '', 0, ''),
(1685, 'heart pillow', '', 0, ''),
(1686, 'blue round pillow', '', 0, ''),
(1687, 'red round pillow', '', 0, ''),
(1688, 'green round pillow', '', 0, ''),
(1689, 'yellow round pillow', '', 0, ''),
(1690, 'blue round pillow', '', 0, ''),
(1691, 'red round pillow', '', 0, ''),
(1692, 'purple round pillow', '', 0, ''),
(1693, 'turqoise round pillow', '', 0, ''),
(1694, 'sofa', '', 0, ''),
(1695, 'sofa', '', 0, ''),
(1696, 'sofa', '', 0, ''),
(1697, 'sofa', '', 0, ''),
(1698, 'sofa', '', 0, ''),
(1699, 'sofa', '', 0, ''),
(1700, 'sofa', '', 0, ''),
(1701, 'sofa', '', 0, ''),
(1702, 'sofa', '', 0, ''),
(1703, 'sofa', '', 0, ''),
(1704, 'sofa', '', 0, ''),
(1705, 'sofa', '', 0, ''),
(1706, 'sofa', '', 0, ''),
(1707, 'sofa', '', 0, ''),
(1708, 'sofa', '', 0, ''),
(1709, 'sofa', '', 0, ''),
(1710, 'wardrobe', '', 0, ''),
(1711, 'wardrobe', '', 0, ''),
(1712, 'wardrobe', '', 0, ''),
(1713, 'wardrobe', '', 0, ''),
(1714, 'drawers', '', 0, ''),
(1715, 'drawers', '', 0, ''),
(1716, 'drawers', '', 0, ''),
(1717, 'drawers', '', 0, ''),
(1718, 'bookcase', '', 0, ''),
(1719, 'bookcase', '', 0, ''),
(1720, 'bookcase', '', 0, ''),
(1721, 'bookcase', '', 0, ''),
(1722, 'bookcase', '', 0, ''),
(1723, 'bookcase', '', 0, ''),
(1724, 'dresser', '', 0, ''),
(1725, 'dresser', '', 0, ''),
(1726, 'dresser', '', 0, ''),
(1727, 'dresser', '', 0, ''),
(1728, 'pendulum clock', '', 0, ''),
(1729, 'pendulum clock', '', 0, ''),
(1730, 'pendulum clock', '', 0, ''),
(1731, 'pendulum clock', '', 0, ''),
(1732, 'locker', '', 0, ''),
(1733, 'locker', '', 0, ''),
(1734, 'locker', '', 0, ''),
(1735, 'locker', '', 0, ''),
(1736, 'mirror', '', 0, ''),
(1737, 'mirror', '', 0, ''),
(1738, 'box', '', 0, ''),
(1739, 'crate', '', 0, ''),
(1740, 'chest', '', 0, ''),
(1741, 'gravity floor', '', 0, ''),
(1742, 'wooden coffin', '', 0, ''),
(1743, 'wooden coffin', '', 0, ''),
(1744, 'wooden coffin', '', 0, ''),
(1745, 'wooden coffin', '', 0, ''),
(1746, 'treasure chest', '', 0, ''),
(1747, 'chest', '', 0, ''),
(1748, 'chest', '', 0, ''),
(1749, 'chest', '', 0, ''),
(1750, 'large trunk', '', 0, ''),
(1751, 'large trunk', '', 0, ''),
(1752, 'large trunk', '', 0, ''),
(1753, 'large trunk', '', 0, ''),
(1754, 'bed', '', 0, ''),
(1755, 'bed', '', 0, ''),
(1756, 'cot', '', 0, ''),
(1757, 'cot', '', 0, ''),
(1758, 'cot', '', 0, ''),
(1759, 'cot', '', 0, ''),
(1760, 'bed', '', 0, ''),
(1761, 'bed', '', 0, ''),
(1762, 'bed', '', 0, ''),
(1763, 'bed', 'Somebody is sleeping there.', 0, ''),
(1764, 'bed', '', 0, ''),
(1765, 'bed', 'Somebody is sleeping there.', 0, ''),
(1766, 'cot', '', 0, ''),
(1767, 'cot', 'Somebody is sleeping there.', 0, ''),
(1768, 'cot', '', 0, ''),
(1769, 'cot', 'Somebody is sleeping there.', 0, ''),
(1770, 'punching  bag', '', 0, ''),
(1771, 'water cask', '', 0, ''),
(1772, 'beer cask', '', 0, ''),
(1773, 'wine cask', '', 0, ''),
(1774, 'barrel', '', 0, ''),
(1775, 'trough', '', 0, ''),
(1776, 'cask', '', 0, ''),
(1777, 'dustbin', '', 0, ''),
(1778, 'big cask', '', 0, ''),
(1779, 'big cask', '', 0, ''),
(1780, 'big cask', '', 0, ''),
(1781, 'big cask', '', 0, ''),
(1782, 'big cask', '', 0, ''),
(1783, 'big cask', '', 0, ''),
(1784, 'big cask', '', 0, ''),
(1785, 'big cask', '', 0, ''),
(1786, 'oven', '', 0, ''),
(1787, 'oven', '', 0, ''),
(1788, 'oven', '', 0, ''),
(1789, 'oven', '', 0, ''),
(1790, 'oven', '', 0, ''),
(1791, 'oven', '', 0, ''),
(1792, 'oven', '', 0, ''),
(1793, 'oven', '', 0, ''),
(1794, 'red carpet', '', 0, ''),
(1795, 'red carpet', '', 0, ''),
(1796, 'red carpet', '', 0, ''),
(1797, 'red carpet', '', 0, ''),
(1798, 'red carpet', '', 0, ''),
(1799, 'red carpet', '', 0, ''),
(1800, 'red carpet', '', 0, ''),
(1801, 'red carpet', '', 0, ''),
(1802, 'red carpet', '', 0, ''),
(1803, 'oriental carpet', '', 0, ''),
(1804, 'oriental carpet', '', 0, ''),
(1805, 'oriental carpet', '', 0, ''),
(1806, 'oriental carpet', '', 0, ''),
(1807, 'oriental carpet', '', 0, ''),
(1808, 'oriental carpet', '', 0, ''),
(1809, 'painting', '', 0, ''),
(1810, 'blackboard', '', 0, ''),
(1811, 'blackboard', '', 0, ''),
(1812, 'tapestry', '', 0, ''),
(1813, 'tapestry', '', 0, ''),
(1814, 'painting', '', 0, ''),
(1815, 'blackboard', '', 0, ''),
(1816, 'mirror', '', 0, ''),
(1817, 'mirror', '', 0, ''),
(1818, 'blackboard', '', 0, ''),
(1819, 'banner', '', 0, ''),
(1820, 'emblem', '', 0, ''),
(1821, 'banner', '', 0, ''),
(1822, 'banner', '', 0, ''),
(1823, 'banner', '', 0, ''),
(1824, 'banner', '', 0, ''),
(1825, 'picture', '', 0, ''),
(1826, 'picture', '', 0, ''),
(1827, 'picture', '', 0, ''),
(1828, 'picture', '', 0, ''),
(1829, 'painting', '', 0, ''),
(1830, 'painting', '', 0, ''),
(1831, 'picture', '', 0, ''),
(1832, 'picture', '', 0, ''),
(1833, 'picture', '', 0, ''),
(1834, 'picture', '', 0, ''),
(1835, 'picture', '', 0, ''),
(1836, 'picture', '', 0, ''),
(1837, 'picture', '', 0, ''),
(1838, 'picture', '', 0, ''),
(1839, 'picture', '', 0, ''),
(1840, 'picture', '', 0, ''),
(1841, 'picture', '', 0, ''),
(1842, 'picture', '', 0, ''),
(1843, 'wall mirror', '', 0, ''),
(1844, 'wall mirror', '', 0, ''),
(1845, 'wall mirror', '', 0, ''),
(1846, 'wall mirror', '', 0, ''),
(1847, 'wall mirror', '', 0, ''),
(1848, 'wall mirror', '', 0, ''),
(1849, 'wall mirror', '', 0, ''),
(1850, 'wall mirror', '', 0, ''),
(1851, 'wall mirror', '', 0, ''),
(1852, 'picture', '', 0, ''),
(1853, 'picture', '', 0, ''),
(1854, 'picture', '', 0, ''),
(1855, 'purple tapestry', '', 0, ''),
(1856, 'purple tapestry', '', 0, ''),
(1857, 'purple tapestry', '', 0, ''),
(1858, 'green tapestry', '', 0, ''),
(1859, 'green tapestry', '', 0, ''),
(1860, 'green tapestry', '', 0, ''),
(1861, 'yellow tapestry', '', 0, ''),
(1862, 'yellow tapestry', '', 0, ''),
(1863, 'yellow tapestry', '', 0, ''),
(1864, 'orange tapestry', '', 0, ''),
(1865, 'orange tapestry', '', 0, ''),
(1866, 'orange tapestry', '', 0, ''),
(1867, 'red tapestry', '', 0, ''),
(1868, 'red tapestry', '', 0, ''),
(1869, 'red tapestry', '', 0, ''),
(1870, 'blue tapestry', '', 0, ''),
(1871, 'blue tapestry', '', 0, ''),
(1872, 'blue tapestry', '', 0, ''),
(1873, 'cuckoo clock', '', 0, ''),
(1874, 'cuckoo clock', '', 0, ''),
(1875, 'cuckoo clock', '', 0, ''),
(1876, 'cuckoo clock', '', 0, ''),
(1877, 'cuckoo clock', '', 0, '');
INSERT INTO `list_of_items` (`id`, `name`, `description`, `level`, `type`) VALUES
(1878, 'white tapestry', '', 0, ''),
(1879, 'white tapestry', '', 0, ''),
(1880, 'white tapestry', '', 0, ''),
(1881, 'cuckoo clock', '', 0, ''),
(1882, 'demon trophy', '', 0, ''),
(1883, 'demon trophy', '', 0, ''),
(1884, 'wolf trophy', '', 0, ''),
(1885, 'wolf trophy', '', 0, ''),
(1886, 'orc trophy', '', 0, ''),
(1887, 'orc trophy', '', 0, ''),
(1888, 'behemnot trophy', '', 0, ''),
(1889, 'behemnot trophy', '', 0, ''),
(1890, 'deer trophy', '', 0, ''),
(1891, 'deer trophy', '', 0, ''),
(1892, 'cyclops trophy', '', 0, ''),
(1893, 'cyclops trophy', '', 0, ''),
(1894, 'dragon trophy', '', 0, ''),
(1895, 'dragon trophy', '', 0, ''),
(1896, 'lion trophy', '', 0, ''),
(1897, 'lion trophy', '', 0, ''),
(1898, 'minotaur trophy', '', 0, ''),
(1899, 'minotaur trophy', '', 0, ''),
(1900, 'bloodspot', '', 0, ''),
(1901, 'bloodspot', '', 0, ''),
(1902, 'bloodspot', '', 0, ''),
(1903, 'bloodspot', '', 0, ''),
(1904, 'bloodspot', '', 0, ''),
(1905, 'bloodspot', '', 0, ''),
(1906, 'cobwebs', '', 0, ''),
(1907, 'cobwebs', '', 0, ''),
(1908, 'cobwebs', '', 0, ''),
(1909, 'flowery wall', '', 0, ''),
(1910, 'flowery wall', '', 0, ''),
(1911, 'flowery wall', '', 0, ''),
(1912, 'flowery wall', '', 0, ''),
(1913, 'flowery wall', '', 0, ''),
(1914, 'flowery wall', '', 0, ''),
(1915, 'flowery wall', '', 0, ''),
(1916, 'flowery wall', '', 0, ''),
(1917, 'flowery wall', '', 0, ''),
(1918, 'flowery wall', '', 0, ''),
(1919, 'flowery wall', '', 0, ''),
(1920, 'flowery wall', '', 0, ''),
(1921, 'mossy wall', '', 0, ''),
(1922, 'mossy wall', '', 0, ''),
(1923, 'mossy wall', '', 0, ''),
(1924, 'mossy wall', '', 0, ''),
(1925, 'mossy wall', '', 0, ''),
(1926, 'mossy wall', '', 0, ''),
(1927, 'mossy wall', '', 0, ''),
(1928, 'mossy wall', '', 0, ''),
(1929, 'mossy wall', '', 0, ''),
(1930, 'mossy wall', '', 0, ''),
(1931, 'mossy wall', '', 0, ''),
(1932, 'mossy wall', '', 0, ''),
(1933, 'mossy wall', '', 0, ''),
(1934, 'mossy wall', '', 0, ''),
(1935, 'mossy wall', '', 0, ''),
(1936, 'mossy wall', '', 0, ''),
(1937, 'mossy wall', '', 0, ''),
(1938, 'mossy wall', '', 0, ''),
(1939, 'mossy wall', '', 0, ''),
(1940, 'mossy wall', '', 0, ''),
(1941, 'mossy wall', '', 0, ''),
(1942, 'mossy wall', '', 0, ''),
(1943, 'mossy wall', '', 0, ''),
(1944, 'mossy wall', '', 0, ''),
(1945, 'switch', '', 0, ''),
(1946, 'switch', '', 0, ''),
(1947, 'blank paper', '', 0, ''),
(1948, 'parchment', '', 0, ''),
(1949, 'scroll', '', 0, ''),
(1950, 'book', '', 0, ''),
(1951, 'parchment', '', 0, ''),
(1952, 'map', '', 0, ''),
(1953, 'parchment', '', 0, ''),
(1954, 'paper', '', 0, ''),
(1955, 'book', '', 0, ''),
(1956, 'map', '', 0, ''),
(1957, 'map', '', 0, ''),
(1958, 'book', '', 0, ''),
(1959, 'book', '', 0, ''),
(1960, 'book', '', 0, ''),
(1961, 'book', '', 0, ''),
(1962, 'book', '', 0, ''),
(1963, 'book', '', 0, ''),
(1964, 'scrool', '', 0, ''),
(1965, 'book', '', 0, ''),
(1966, 'book', '', 0, ''),
(1967, 'parchment', '', 0, ''),
(1968, 'document', '', 0, ''),
(1969, 'written parchment', '', 0, ''),
(1970, 'book', '', 0, ''),
(1971, 'book', '', 0, ''),
(1972, 'book', '', 0, ''),
(1973, 'book', '', 0, ''),
(1974, 'letter', '', 0, ''),
(1975, 'book', '', 0, ''),
(1976, 'playboy', '', 0, ''),
(1977, 'book', '', 0, ''),
(1978, 'book', '', 0, ''),
(1979, 'book', '', 0, ''),
(1980, 'book', '', 0, ''),
(1981, 'book', '', 0, ''),
(1982, 'purple tome', 'It is a volume of The Mystic Secrets of Tibia.', 0, ''),
(1983, 'green tome', 'It is a volume of The Mystic Secrets of Tibia.', 0, ''),
(1984, 'blue tome', 'It is a volume of The Mystic Secrets of Tibia.', 0, ''),
(1985, 'grey tome', 'It is a volume of The Mystic Secrets of Tibia.', 0, ''),
(1986, 'red tome', 'It is a volume of The Mystic Secrets of Tibia.', 0, ''),
(1987, 'Bag', '', 8, 'backpack'),
(1988, 'Backpack', '', 20, 'backpack'),
(1989, 'basket', '', 0, ''),
(1990, 'present', '', 0, ''),
(1991, 'bag', '', 8, 'backpack'),
(1992, 'Android Bag', '', 8, 'backpack'),
(1993, 'Present', '', 8, 'backpack'),
(1994, 'Golden Bag', '', 15, 'backpack'),
(1995, 'Bluee Capsule', '', 20, 'backpack'),
(1996, 'Golden Capsule', '', 24, 'backpack'),
(1997, 'Red Capsule', '', 20, 'backpack'),
(1998, 'Green Capsule', '', 20, 'backpack'),
(1999, 'Blue Capsule', '', 20, 'backpack'),
(2000, 'Red Backpack', '', 20, 'backpack'),
(2001, 'Red Capsule', '', 20, 'backpack'),
(2002, 'Silver Capsule', '', 20, 'backpack'),
(4360, 'Dragon Ball Backpack', '', 36, 'backpack'),
(8532, 'Shenron Backpack', '', 36, 'backpack'),
(8561, 'Dragon Backpack', '', 36, 'backpack'),
(2003, 'skills', '', 12, 'backpack'),
(2004, 'backpack', '', 20, 'backpack'),
(2005, 'bucket', '', 0, ''),
(2006, 'potion', '', 0, ''),
(2007, 'blue bottle', '', 0, ''),
(2008, 'vase', '', 0, ''),
(2009, 'green flask', '', 0, ''),
(2010, 'broken bottle', '', 0, ''),
(2011, 'blue amphora', '', 0, ''),
(2012, 'mug', '', 0, ''),
(2013, 'cup', '', 0, ''),
(2014, 'Scouter', '', 0, ''),
(2015, 'Cask of Wine', '', 0, ''),
(2016, 'pool', '', 0, ''),
(2017, 'pool', '', 0, ''),
(2018, 'pool', '', 0, ''),
(2019, 'pool', '', 0, ''),
(2020, 'pool', '', 0, ''),
(2021, 'pool', '', 0, ''),
(2022, 'broken bottle', '', 0, ''),
(2023, 'amphora', '', 0, ''),
(2024, 'broken brown glass', '', 0, ''),
(2025, 'pool', '', 0, ''),
(2026, 'pool', '', 0, ''),
(2027, 'pool', '', 0, ''),
(2028, 'pool', '', 0, ''),
(2029, 'pool', '', 0, ''),
(2030, 'pool', '', 0, ''),
(2031, 'waterskin', '', 0, ''),
(2032, 'bowl', '', 0, ''),
(2033, 'golden mug', '', 0, ''),
(2034, 'large amphora', '', 0, ''),
(2035, 'plate', '', 0, ''),
(2036, 'watch', '', 0, ''),
(2037, 'wall lamp', '', 0, ''),
(2038, 'wall lamp', '', 0, ''),
(2039, 'wall lamp', '', 0, ''),
(2040, 'wall lamp', '', 0, ''),
(2041, 'candelabrum', '', 0, ''),
(2042, 'candelabrum', '', 0, ''),
(2043, 'candelabrum', '', 0, ''),
(2044, 'lamp', '', 0, ''),
(2045, 'lamp', '', 0, ''),
(2046, 'lamp', '', 0, ''),
(2047, 'candle', '', 0, ''),
(2048, 'candle', '', 0, ''),
(2049, 'candle', '', 0, ''),
(2050, 'torch', '', 0, ''),
(2051, 'torch', '', 0, ''),
(2052, 'torch', '', 0, ''),
(2053, 'torch', '', 0, ''),
(2054, 'torch', '', 0, ''),
(2055, 'torch', '', 0, ''),
(2056, 'torch', '', 0, ''),
(2057, 'candelabrum', '', 0, ''),
(2058, 'wall torch', '', 0, ''),
(2059, 'wall torch', '', 0, ''),
(2060, 'wall torch', '', 0, ''),
(2061, 'wall torch', '', 0, ''),
(2062, 'radar', '', 0, ''),
(2063, 'small oil lamp', '', 0, ''),
(2064, 'table lamp', '', 0, ''),
(2065, 'table lamp', '', 0, ''),
(2066, 'wall lamp', '', 0, ''),
(2067, 'wall lamp', '', 0, ''),
(2068, 'wall lamp', '', 0, ''),
(2069, 'wall lamp', '', 0, ''),
(2070, 'flute', '', 0, ''),
(2071, 'lyre', '', 0, ''),
(2072, 'lute', '', 0, ''),
(2073, 'drum', '', 0, ''),
(2074, 'panpipes', '', 0, ''),
(2075, 'simple fanfare', '', 0, ''),
(2076, 'fanfare', '', 0, ''),
(2077, 'royal fanfare', '', 0, ''),
(2078, 'post horn', '', 0, ''),
(2079, 'horn', '', 0, ''),
(2080, 'piano', '', 0, ''),
(2081, 'piano', '', 0, ''),
(2082, 'piano', '', 0, ''),
(2083, 'piano', '', 0, ''),
(2084, 'harp', '', 0, ''),
(2085, 'harp', '', 0, ''),
(2086, 'right key', '', 0, ''),
(2087, 'Magic key', '', 0, ''),
(2088, 'silver key', '', 0, ''),
(2089, 'copper key', '', 0, ''),
(2090, 'left key', '', 0, ''),
(2091, 'golden key', '', 0, ''),
(2092, 'bone key', '', 0, ''),
(2093, 'water-pipe', '', 0, ''),
(2094, 'bird cage', '', 0, ''),
(2095, 'bird cage', '', 0, ''),
(2096, 'pumpkinhead', '', 0, ''),
(2097, 'pumpkinhead', '', 0, ''),
(2098, 'globe', '', 0, ''),
(2099, 'water-pipe', '', 0, ''),
(2100, 'god flowers', '', 0, ''),
(2101, 'indoor plant', '', 0, ''),
(2102, 'flower bowl', '', 0, ''),
(2103, 'honey flower', '', 0, ''),
(2104, 'potted flower', '', 0, ''),
(2105, 'christmas tree', '', 0, ''),
(2106, 'big flowerpot', '', 0, ''),
(2107, 'exotic flower', '', 0, ''),
(2108, 'wooden doll', '', 0, ''),
(2109, 'football', '', 0, ''),
(2110, 'doll', '', 0, ''),
(2111, 'snowball', '', 0, 'distance'),
(2112, 'teddy bear', '', 0, ''),
(2113, 'ship model', '', 0, ''),
(2114, 'piggy bank', '', 0, ''),
(2115, 'broken piggy bank', '', 0, ''),
(2116, 'rocking horse', '', 0, ''),
(2117, 'rocking horse', '', 0, ''),
(2118, 'rocking horse', '', 0, ''),
(2119, 'rocking horse', '', 0, ''),
(2120, 'jest pack', '', 0, ''),
(2121, 'wedding ring', '', 0, 'ring'),
(2122, 'elven brooch', '', 0, ''),
(2123, 'ring of the sky', '', 0, 'ring'),
(2124, 'Majin ring', 'HP/MP +2000.', 0, 'ring'),
(8352, 'Health Mega Band', 'HP+3000.', 0, 'ring'),
(2125, 'crystal necklace', '', 0, 'necklace'),
(2126, 'bronzen necklace', '', 0, 'necklace'),
(2127, 'emerald bangle', '', 0, 'ring'),
(2128, 'ghost cap', '', 0, ''),
(2129, 'wolf tooth chain', '', 0, 'necklace'),
(2130, 'golden amulet', 'Many gems glitter on the amulet.', 0, 'necklace'),
(2131, 'star amulet', '', 0, 'necklace'),
(2132, 'silver necklace', '', 0, 'necklace'),
(2133, 'ruby necklace', '', 0, 'necklace'),
(2134, 'silver brooch', '', 0, ''),
(2135, 'scarab amulet', '', 0, 'necklace'),
(2136, 'demonbone amulet', '', 0, 'necklace'),
(2137, 'some golden fruits', '', 0, ''),
(2138, 'starlight amulet', '', 0, 'necklace'),
(2139, 'ancient tiara', '', 0, 'necklace'),
(2140, 'holy scarab', '', 0, ''),
(2141, 'holy falcon', '', 0, ''),
(2142, 'ancient amulet', '', 0, 'necklace'),
(2143, 'Plant of four leaves', '', 0, ''),
(2144, 'Green Core', '', 0, ''),
(2145, 'green mushrom', '', 0, ''),
(2146, 'Small Sapphire', '', 0, ''),
(2147, 'small ruby', '', 0, ''),
(2148, 'cent', '', 0, ''),
(2149, 'small emerald', '', 0, ''),
(2150, 'small amethyst', '', 0, ''),
(2151, 'Talon', 'There are many rumours about these magic gems.', 0, ''),
(2152, 'dolar', '', 0, ''),
(2153, 'Violet Gem', '', 0, ''),
(2154, 'yellow gem', '', 0, ''),
(2155, 'big emerald', '', 0, ''),
(2156, 'big ruby', '', 0, ''),
(2157, 'Magic Flower', '', 0, ''),
(2158, 'blue gem', '', 0, ''),
(2159, 'Onion Root', '', 0, ''),
(2160, 'gold', '', 0, ''),
(2161, 'strange talisman', '', 0, 'necklace'),
(2162, 'magic lightwand', '', 0, ''),
(2163, 'magic lightwand', '', 0, ''),
(8361, 'Kai Ring', 'Ki damage +5%', 0, 'ring'),
(8362, 'Speed Ring', 'Attack Speed +10.', 0, 'ring'),
(2166, 'Two Tones Bands', '', 0, ''),
(8359, 'Saiyan Ring', 'Ki Regeneration +300/s.', 0, 'ring'),
(8360, 'Namekjin Ring', 'All skills +5.', 0, 'ring'),
(2167, 'energy ring', '', 0, 'ring'),
(2168, 'blue bands', '', 0, 'ring'),
(2169, 'Human Ring', 'Health Regeneration +300/s.', 0, 'ring'),
(2170, 'silver amulet', '', 0, 'ring'),
(2171, 'Tao Pai Pai Helmet', '+500HP/MP, health and ki regeneration +50/s.', 20, 'head'),
(2172, 'bronze amulet', '', 0, 'ring'),
(2173, 'Android Boots', 'HP/MP +500', 0, 'feet'),
(2174, 'strange symbol', '', 0, ''),
(2175, 'spellbook', '', 0, ''),
(2176, 'orb', '', 0, ''),
(2177, 'potion', '', 0, ''),
(2178, 'mind stone', '', 0, ''),
(2179, 'pass', '', 0, 'necklace'),
(2180, 'monitor', '', 0, ''),
(2181, 'Green Gun', '', 0, 'wand'),
(2182, 'Gun', '', 0, 'wand'),
(2183, 'Stronge Gun', '', 0, 'wand'),
(2184, 'crystal wand', '', 0, ''),
(2185, 'Uzi', '', 0, 'wand'),
(2186, 'Sniper', '', 0, 'wand'),
(2187, 'Strong Ki', '', 0, 'distance'),
(2188, 'Green Ki', '', 0, 'distance'),
(2189, 'Yellow Ki', '', 0, 'distance'),
(2190, 'Blue Ki', '', 0, 'distance'),
(2191, 'Red Ki', '', 0, 'distance'),
(2192, 'crystal ball', '', 0, ''),
(2193, 'bulma doll', '', 0, ''),
(2194, 'mysterious fetish', '', 0, ''),
(2195, 'Saiyan Boots', '+125 HP/MP. health and ki regeneration +15/s', 5, 'feet'),
(2196, 'broken amulet', '', 0, 'necklace'),
(2197, 'stone skin amulet', '', 0, 'necklace'),
(2198, 'elven amulet', '', 0, 'necklace'),
(2199, 'garlic necklace', '', 0, 'necklace'),
(2200, 'protection amulet', '', 0, 'necklace'),
(2201, 'dragon necklace', '', 0, 'necklace'),
(2202, 'stealth ring', '', 0, 'ring'),
(2203, 'Two Tones Bands', '', 0, 'ring'),
(2204, 'energy ring', '', 0, 'ring'),
(2205, 'Blue Bands', '', 0, 'ring'),
(2206, 'black band', '', 0, 'ring'),
(2207, 'Grand Kai Armor', 'all skills + 8. HP/MP + 1500.', 20, 'body'),
(2208, 'East Kai Armor', 'all skills + 8. health and ki regeneration + 100/s. HP/MP + 1000.', 20, 'body'),
(2209, 'South Kai Armor', 'all skills + 8. health and ki regeneration + 165/s.', 20, 'body'),
(2210, 'Sword Band', '', 0, 'ring'),
(8354, 'Melee Mega Band', '', 0, 'ring'),
(8355, 'Ki Mega Band', '', 0, 'ring'),
(8356, 'Distance Mega Band', '', 0, 'ring'),
(8529, 'Demigra Band', '+6000 HP/MP, all skills +5, ki attack +2%,.', 0, 'ring'),
(2212, 'Weapon Band', '', 0, ''),
(2213, 'dwarven ring', '', 0, 'ring'),
(2214, 'red bands', '', 0, 'ring'),
(2215, 'dwarven ring', '', 0, 'ring'),
(2216, 'red bands', '', 0, 'ring'),
(2217, 'book', '', 0, ''),
(2353, 'Potaras', '', 0, ''),
(2218, 'paw amulet', '', 0, ''),
(2219, 'banana skin', '', 0, ''),
(2220, 'dirty fur', '', 0, ''),
(2221, 'duck', '', 0, ''),
(2222, 'some wood', '', 0, ''),
(2223, 'rubbish', '', 0, ''),
(2224, 'rubbish', '', 0, ''),
(2225, 'piece of iron', '', 0, ''),
(2226, 'fishbone', '', 0, ''),
(2227, 'rotten meat', '', 0, ''),
(2228, 'broken pottery', '', 0, ''),
(2229, 'skull', '', 0, ''),
(2230, 'bone', '', 0, ''),
(2231, 'big bone', '', 0, ''),
(2232, 'broken brown glass', '', 0, ''),
(2233, 'broken green glass', '', 0, ''),
(2234, 'kami doll', '', 0, ''),
(2235, 'moldy cheese', '', 0, ''),
(2236, 'torn book', '', 0, ''),
(2237, 'dirty cape', '', 0, ''),
(2238, 'worn leather boots', '', 0, ''),
(2239, 'burnt scroll', '', 0, ''),
(2240, 'fish remains', '', 0, ''),
(2241, 'rubbish', '', 0, ''),
(2242, 'rubbish', '', 0, ''),
(2243, 'rubbish', '', 0, ''),
(2244, 'leaves', '', 0, ''),
(2245, 'twigs', '', 0, ''),
(2246, 'burnt down firewood', '', 0, ''),
(2247, 'skull', '', 0, ''),
(2248, 'skull', '', 0, ''),
(2249, 'smoke', '', 0, ''),
(2250, 'wooden trash', '', 0, ''),
(2251, 'wooden trash', '', 0, ''),
(2252, 'wooden trash', '', 0, ''),
(2253, 'wooden trash', '', 0, ''),
(2254, 'wooden trash', '', 0, ''),
(2255, 'wooden trash', '', 0, ''),
(2256, 'metal trash', '', 0, ''),
(2257, 'metal trash', '', 0, ''),
(2258, 'golden trash', '', 0, ''),
(2259, 'stone rubbish', '', 0, ''),
(2260, 'event core 2009', '', 0, ''),
(2261, 'ki sword', '', 0, ''),
(2262, 'strenght +1', '', 0, ''),
(2263, 'blasting +1', '', 0, ''),
(2264, 'defense +1', '', 0, ''),
(2265, 'sword +1', '', 0, ''),
(2266, 'two hands fury', '', 0, ''),
(2267, 'fury flash', '', 0, ''),
(2268, 'technique', '', 0, ''),
(2269, 'Big Bolt', '', 0, ''),
(2270, 'Chobakuretsumaha', '', 0, ''),
(2271, 'Namek Power Flash', '', 0, ''),
(2272, 'Burning Wave', '', 0, ''),
(2273, 'Old Namek Heal', '', 0, ''),
(2274, 'Punch', '', 0, ''),
(2275, 'Kamehameha', '', 0, ''),
(2276, 'Masenko', '', 0, ''),
(2277, 'technique', '', 0, ''),
(2278, 'technique', '', 0, ''),
(2279, 'technique', '', 0, ''),
(2280, 'Namek Heal', '', 0, ''),
(2281, 'Chocolinare', '', 0, ''),
(2282, 'Giga Ressurection', '', 0, ''),
(2283, 'Dunk Shot', '', 0, ''),
(2284, 'Speed Up', '', 0, ''),
(2285, 'Znire', '', 0, ''),
(2286, 'Vis Kienzan', '', 0, ''),
(2287, 'technique', '', 0, ''),
(2288, 'Ki Blast', '', 0, ''),
(2289, 'technique', '', 0, ''),
(2290, 'technique', '', 0, ''),
(2291, 'technique', '', 0, ''),
(2292, 'technique', '', 0, ''),
(2293, 'technique', '', 0, ''),
(2294, 'Finger Ki', '', 0, ''),
(2295, 'Kienzan', '', 0, ''),
(2296, 'Misty KiWave', '', 0, ''),
(2297, 'Explosion', '', 0, ''),
(2298, 'Small Ressurection', '', 0, ''),
(2299, 'Cell Dush', '', 0, ''),
(2300, 'One Hand Ki Wave', '', 0, ''),
(2301, 'technique', '', 0, ''),
(2302, 'technique', '', 0, ''),
(2303, 'technique', '', 0, ''),
(2304, 'technique', '', 0, ''),
(2305, 'technique', '', 0, ''),
(2306, 'Big Ressurection', '', 0, ''),
(2307, 'Ultra Flash', '', 0, ''),
(2308, 'technique', '', 0, ''),
(2309, 'Regeneration', '', 0, ''),
(2310, 'technique', '', 0, ''),
(2311, 'technique', '', 0, ''),
(2312, 'mega speed', '', 0, ''),
(2313, 'technique', '', 0, ''),
(2314, 'dunk ball', '', 0, ''),
(2315, 'Taiyoken', '', 0, ''),
(2316, 'tornado', '', 0, ''),
(4370, 'Dead', '', 0, ''),
(2318, 'brooch', '', 0, ''),
(2319, 'strange symbol', '', 0, 'necklace'),
(2320, 'skull', '', 0, ''),
(2321, 'saw', '', 4, 'club'),
(2322, 'doll', '', 0, ''),
(2323, 'magician hat', '', 0, ''),
(2324, 'broom', '', 0, ''),
(2325, 'book', '', 0, ''),
(2326, 'annihilation bear', 'I braved the Annihilator and all I got is this lousy teddy bear.', 0, ''),
(2327, 'bulma doll', '', 0, ''),
(2328, 'monkey doll', '', 0, ''),
(2329, 'document', '', 0, ''),
(2330, 'bag', '', 0, ''),
(2331, 'present', '', 0, ''),
(2332, 'horn', '', 0, ''),
(2333, 'stamped letter', '', 0, ''),
(2334, 'mailbox', '', 0, ''),
(2335, 'helmet ornament', '', 0, ''),
(2336, 'piece of the helmet of the ancient', '', 0, ''),
(2337, 'piece of the helmet of the ancient', '', 0, ''),
(2338, 'piece of the helmet of the ancient', '', 0, ''),
(2339, 'damaged helmet', 'This item seems to be a singlepart of a bigger helmet.', 0, ''),
(2340, 'piece of the helmet of the ancient', '', 0, ''),
(2341, 'piece of the helmet of the ancient', '', 0, ''),
(2342, 'Chibi Gohan Capp', '+100HP/MP. ki regeneration 20/s.', 5, 'head'),
(2343, 'Chibi Gohan Cap', '+100HP/MP. ki regeneration 20/s.', 5, 'head'),
(2344, 'oil lamp', '', 0, ''),
(2345, 'spy report', '', 0, ''),
(2346, 'tear of daraman', '', 0, ''),
(2347, 'cookbook', '', 0, ''),
(2348, 'ancient rune', 'This rune vibrates with ancient powers. It seems to be rotting rapidly.', 0, ''),
(2349, 'blue note', 'The blue crystal is softly humming a ghostly melody. It seems to be rotting rapidly.', 0, ''),
(2350, 'sword hilt', 'It was once part of a formidable two handed weapon. It seems to be rotting rapidly.', 0, ''),
(2351, 'cobrafang dagger', 'This ritual weapon was forged from the sharp fang of a giant cobra. It seems to be rotting rapidly.', 0, ''),
(0, 'crystal arrow', 'This arrow seems not suitable for the use with ordinary bows. It seems to be rotting rapidly.', 0, ''),
(2354, 'ornamented ankh', 'This ancient relic shows signs of untold age. It seems to be rotting rapidly.', 0, ''),
(2355, 'stuffed rabbit', '', 0, ''),
(2356, 'small oil lamp', '', 0, ''),
(2357, 'ring of wishes', '', 0, 'ring'),
(2358, 'Super C17 Boots', 'defense and energy +15. HP/MP + 1500', 15, 'feet'),
(2359, 'small oil lamp', '', 0, ''),
(2360, 'portable hole', '', 0, ''),
(2361, 'frozen starlight', '', 0, ''),
(2362, 'carrot of doom', '', 0, ''),
(2363, 'blood orb', '', 0, ''),
(2364, 'post horn', '', 0, ''),
(2365, 'backpack of holding', '', 24, 'backpack'),
(2366, 'roc feather', '', 0, ''),
(2367, 'drum', '', 0, ''),
(2368, 'simple fanfare', '', 0, ''),
(2369, 'cornucopia', '', 0, ''),
(2370, 'lute', '', 0, ''),
(2371, 'post horn', 'It\'s property of the Postmaster\'s Guild and only rewarded to loyal members.', 0, ''),
(2372, 'lyre', '', 0, ''),
(2373, 'panpipes', '', 0, ''),
(2374, 'electic guitar', '', 0, ''),
(2375, 'gemmed lamp', 'It is the djinn leader\'s sleeping lamp.', 0, ''),
(2376, 'Small Sword', '', 2, 'sword'),
(2378, 'Yellow Gloves', '', 2, 'axe'),
(2379, 'Super C17 Legs', 'health and ki regeneration + 150/s. HP/MP + 1500..', 45, 'legs'),
(2380, 'Green Gloves', '', 6, 'axe'),
(2387, 'Stronge Gloves', '', 9, 'axe'),
(2381, 'Gloves', '', 5, 'axe'),
(2382, 'rines', '', 0, 'club'),
(2383, 'Jin Sword', '', 4, 'sword'),
(2384, 'sword wish', '', 4, 'sword'),
(2385, 'Brolly Sword', '', 13, 'sword'),
(2386, 'Vulcan Gloves', '', 16, 'axe'),
(2388, 'glove', '', 4, 'axe'),
(2389, 'spear', '', 0, 'distance'),
(2390, 'Janemba Sword', 'It is the magic of Demon Sword.', 15, 'sword'),
(2391, 'Nunhacko', '', 6, 'club'),
(2392, 'Demon Sword', 'The blade is a magic flame.', 11, 'sword'),
(2393, 'Soldier Sword', '', 10, 'sword'),
(2394, 'morning star', '', 2, 'club'),
(2395, 'Scimithar', '', 6, 'sword'),
(2396, 'rapier', '', 4, 'sword'),
(2397, 'Vulcanic Sword', '', 10, 'sword'),
(2398, 'Staff', '', 2, 'club'),
(2399, 'throwing ki', '', 0, 'distance'),
(2400, 'Light Sword', 'It is the Sword of Light Ki.', 18, 'sword'),
(2401, 'Goku Staff', '', 14, 'club'),
(2402, 'silver dagger', '', 8, 'sword'),
(2403, 'Z Sword', '', 12, 'sword'),
(2404, 'ice sword', '', 8, 'sword'),
(2405, 'sickle', '', 7, 'axe'),
(2406, 'short sword', '', 3, 'sword'),
(2420, 'Night Sword', '', 19, 'sword'),
(2408, 'share sword', '', 4, 'sword'),
(2409, 'jise sword', '', 2, 'sword'),
(2410, 'throwing fist', '', 0, 'distance'),
(2411, 'White Sword', '', 5, 'sword'),
(2412, 'Katana', '', 8, 'sword'),
(2413, 'Broad sword', '', 36, 'sword'),
(2414, 'dragon lance', 'The extraordinary sharp blade penetrates every armor.', 10, 'axe'),
(2415, 'Great Axe', 'A masterpiece of a dwarven smith.', 10, 'axe'),
(2416, 'crowbar', '', 6, 'club'),
(2417, 'saw', '', 3, 'club'),
(2418, 'golden sickle', '', 13, 'axe'),
(2419, 'scimitar', '', 10, 'sword'),
(2421, 'thunder hammer', 'It is blessed by the gods of Tibia.', 4, 'club'),
(2422, 'iron hammer', '', 7, 'club'),
(2423, 'Red Gloves', '', 3, 'axe'),
(2424, 'White Glove', '', 6, 'club'),
(2425, 'Bandit Legs', '+125 HP/MP. health and ki regeneration +15/s.', 15, 'legs'),
(2426, 'Bandit Coat', '+250 HP. ki regeneration +40/s.', 25, 'body'),
(2427, 'Saibamen Clav Gloves', '', 12, 'axe'),
(2428, 'bris glove', '', 10, 'axe'),
(2429, 'box glove', '', 4, 'axe'),
(2430, 'Saiyan Gloves', '', 13, 'axe'),
(2431, 'Majin Gloves', '', 15, 'axe'),
(2432, 'Castet', '', 10, 'club'),
(2433, 'Saiyan Power', '', 0, 'distance'),
(2434, 'Full Staff', '', 8, 'club'),
(2435, 'Bardock Gloves', '', 10, 'axe'),
(2436, 'skull staff', 'The staff longs for death.', 12, 'club'),
(2437, 'golden mace', '', 12, 'club'),
(2438, 'epee', '', 12, 'sword'),
(2439, 'daramanian mace', '', 10, 'club'),
(2440, 'Golden Gloves', '', 18, 'axe'),
(2441, 'Silver Glove', '', 17, 'axe'),
(2442, 'Saiyan Sword', '', 14, 'sword'),
(2377, 'Fire Sword', '', 15, 'sword'),
(2443, 'Janemba Helmet', '+2500 HP/MP. All skills +10.', 90, 'head');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `market_history`
--

CREATE TABLE `market_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `player_id` int(11) NOT NULL,
  `sale` tinyint(1) NOT NULL DEFAULT 0,
  `itemtype` smallint(5) UNSIGNED NOT NULL,
  `amount` smallint(5) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `expires_at` bigint(20) UNSIGNED NOT NULL,
  `inserted` bigint(20) UNSIGNED NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `market_offers`
--

CREATE TABLE `market_offers` (
  `id` int(10) UNSIGNED NOT NULL,
  `player_id` int(11) NOT NULL,
  `sale` tinyint(1) NOT NULL DEFAULT 0,
  `itemtype` smallint(5) UNSIGNED NOT NULL,
  `amount` smallint(5) UNSIGNED NOT NULL,
  `created` bigint(20) UNSIGNED NOT NULL,
  `anonymous` tinyint(1) NOT NULL DEFAULT 0,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_account_actions`
--

CREATE TABLE `myaac_account_actions` (
  `account_id` int(11) NOT NULL,
  `ip` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ipv6` binary(16) NOT NULL DEFAULT '0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `date` int(11) NOT NULL DEFAULT 0,
  `action` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `myaac_account_actions`
--

INSERT INTO `myaac_account_actions` (`account_id`, `ip`, `ipv6`, `date`, `action`) VALUES
(1, 2130706433, 0x00000000000000000000000000000000, 1650032088, 'Account created.'),
(2, 0, 0x00000000000000000000000000000001, 1650731145, 'Account created.'),
(2, 0, 0x00000000000000000000000000000001, 1650731147, 'Created character <b>Matias</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1650732842, 'Created character <b>Xdxd</b>.'),
(2, 2130706433, 0x00000000000000000000000000000000, 1650841299, 'Created character <b>Xdxdd</b>.'),
(2, 2130706433, 0x00000000000000000000000000000000, 1650843391, 'Created character <b>Test</b>.'),
(2, 2130706433, 0x00000000000000000000000000000000, 1650843640, 'Created character <b>Test</b>.'),
(2, 2130706433, 0x00000000000000000000000000000000, 1650843822, 'Created character <b>Testa</b>.'),
(2, 2130706433, 0x00000000000000000000000000000000, 1650844047, 'Created character <b>Test</b>.'),
(2, 2130706433, 0x00000000000000000000000000000000, 1650845137, 'Created character <b>Testt</b>.'),
(1, 0, 0x00000000000000000000000000000001, 1658173981, 'Created character <b>Mat Ias</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1662349019, 'Created character <b>Goku</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1662383504, 'Created character <b>Xddsd</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1662400844, 'Created character <b>Tedst</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1662478378, 'Created character <b>Monkey</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1662763130, 'Created character <b>Test</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1662763143, 'Created character <b>Testa</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1663962287, 'Created character <b>Goku</b>.'),
(1, 0, 0x00000000000000000000000000000001, 1664116221, 'Created character <b>Vegeta Sample</b>.'),
(1, 0, 0x00000000000000000000000000000001, 1664116390, 'Created character <b>Wiss Sample</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1664145657, 'Created character <b>Dxdxd</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1664145937, 'Created character <b>Tester</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1664572328, 'Created character <b>Xdxd</b>.'),
(1, 0, 0x00000000000000000000000000000001, 1664636051, 'Created character <b>Hit Sample</b>.'),
(1, 0, 0x00000000000000000000000000000001, 1664636198, 'Created character <b>Test</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1664741824, 'Created character <b>Test</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1664741847, 'Created character <b>Twoxd</b>.'),
(3, 3198217819, 0x00000000000000000000000000000000, 1665945905, 'Account created.'),
(3, 3198217819, 0x00000000000000000000000000000000, 1665946017, 'Created character <b>Killershoot</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1666220248, 'Created character <b>Tester</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1668648299, 'Created character <b>Joy Boy</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1668718190, 'Created character <b>Asda</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1668718840, 'Created character <b>Testarss</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1668718852, 'Created character <b>Asdas</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1668721112, 'Created character <b>Test</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1668721124, 'Created character <b>Testt</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1670076644, 'Created character <b>Xdxd</b>.'),
(1, 0, 0x00000000000000000000000000000001, 1670516906, 'Created character <b>Escannor Sample</b>.'),
(1, 0, 0x00000000000000000000000000000001, 1670516949, 'Created character <b>Cs Sample</b>.'),
(1, 0, 0x00000000000000000000000000000001, 1670517070, 'Created character <b>Zoro Sample</b>.'),
(1, 0, 0x00000000000000000000000000000001, 1670517089, 'Created character <b>Brolly Sample</b>.'),
(1, 0, 0x00000000000000000000000000000001, 1670517110, 'Created character <b>Cs Sample</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1670517203, 'Created character <b>Piccolo Sample</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1670517221, 'Created character <b>Bills Sample</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1670517241, 'Created character <b>Buu Sample</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1677452088, 'Created character <b>Tester</b>.'),
(4, 2561473632, 0x00000000000000000000000000000000, 1677629977, 'Account created.'),
(4, 2561473632, 0x00000000000000000000000000000000, 1677630020, 'Created character <b>Bandolex</b>.'),
(5, 3004370954, 0x00000000000000000000000000000000, 1679004705, 'Account created.'),
(5, 3004370954, 0x00000000000000000000000000000000, 1679004790, 'Created character <b>Joga Bem</b>.'),
(6, 3138636931, 0x00000000000000000000000000000000, 1679255645, 'Account created.'),
(6, 3138636931, 0x00000000000000000000000000000000, 1679255678, 'Created character <b>The Sonny</b>.'),
(7, 3148614730, 0x00000000000000000000000000000000, 1679255956, 'Account created.'),
(7, 3148614730, 0x00000000000000000000000000000000, 1679256033, 'Created character <b>Advance</b>.'),
(8, 3130662965, 0x00000000000000000000000000000000, 1679258033, 'Account created.'),
(5, 3130662965, 0x00000000000000000000000000000000, 1679258043, 'Created character <b>Joga Muito Bem</b>.'),
(8, 3130662965, 0x00000000000000000000000000000000, 1679258152, 'Created character <b>Shogun Expansive</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1679320822, 'Created character <b>Leon</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1680634257, 'Created character <b>Test</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1680635417, 'Created character <b>Tester</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1680635721, 'Created character <b>Testa</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1680636682, 'Created character <b>Joy Boy</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1681872122, 'Created character <b>Test</b>.'),
(2, 0, 0x00000000000000000000000000000001, 1681872132, 'Created character <b>Testa</b>.'),
(9, 0, 0x00000000000000000000000000000001, 1701365389, 'Account created.'),
(10, 2130706433, 0x00000000000000000000000000000000, 1718331451, 'Account created.'),
(10, 2130706433, 0x00000000000000000000000000000000, 1718331629, 'Created character <b>Insanity</b>.'),
(10, 2130706433, 0x00000000000000000000000000000000, 1718332353, 'Created character <b>Asdasd</b>.'),
(11, 419877651, 0x00000000000000000000000000000000, 1718637175, 'Account created.'),
(11, 419877651, 0x00000000000000000000000000000000, 1718637318, 'Created character <b>Astruns</b>.'),
(11, 419877651, 0x00000000000000000000000000000000, 1718639454, 'Created character <b>Astrunss</b>.'),
(12, 419788276, 0x00000000000000000000000000000000, 1718680834, 'Account created.'),
(12, 419788276, 0x00000000000000000000000000000000, 1718680835, 'Created character <b>Belmont</b>.'),
(10, 2130706433, 0x00000000000000000000000000000000, 1718809716, 'Created character <b>Asicalao</b>.'),
(13, 423068087, 0x00000000000000000000000000000000, 1723585628, 'Account created.'),
(13, 423068087, 0x00000000000000000000000000000000, 1723585629, 'Created character <b>Buu Lino</b>.'),
(14, 423067830, 0x00000000000000000000000000000000, 1723586169, 'Account created.'),
(14, 423067830, 0x00000000000000000000000000000000, 1723586169, 'Created character <b>Beken</b>.'),
(10, 0, 0x00000000000000000000000000000001, 1723590316, 'Created character <b>Rompe Anos</b>.'),
(13, 423068087, 0x00000000000000000000000000000000, 1723683331, 'Created character <b>Black Lino</b>.'),
(15, 419597491, 0x00000000000000000000000000000000, 1723683778, 'Account created.'),
(15, 419597491, 0x00000000000000000000000000000000, 1723683778, 'Created character <b>Katabum</b>.'),
(10, 2130706433, 0x00000000000000000000000000000000, 1726323925, 'Created character <b>Insaniity</b>.'),
(16, 422929090, 0x00000000000000000000000000000000, 1726336422, 'Account created.'),
(16, 422929090, 0x00000000000000000000000000000000, 1726336422, 'Created character <b>Nyxek</b>.'),
(9, 422929090, 0x00000000000000000000000000000000, 1726345568, 'Created character <b>Nyxx</b>.'),
(10, 2130706433, 0x00000000000000000000000000000000, 1726346967, 'Created character <b>Fuue</b>.'),
(10, 2130706433, 0x00000000000000000000000000000000, 1726347315, 'Created character <b>Fuiu</b>.'),
(10, 2130706433, 0x00000000000000000000000000000000, 1726347670, 'Created character <b>Asdasd</b>.'),
(10, 2130706433, 0x00000000000000000000000000000000, 1726347695, 'Created character <b>Asdqwe</b>.'),
(10, 2130706433, 0x00000000000000000000000000000000, 1726779129, 'Created character <b>Hito</b>.'),
(10, 2130706433, 0x00000000000000000000000000000000, 1726779401, 'Created character <b>Hitoo</b>.'),
(17, 423707164, 0x00000000000000000000000000000000, 1740273608, 'Account created.'),
(17, 423707164, 0x00000000000000000000000000000000, 1740273608, 'Created character <b>Teste</b>.'),
(10, 423707164, 0x00000000000000000000000000000000, 1740274074, 'Created character <b>Player</b>.'),
(10, 2130706433, 0x00000000000000000000000000000000, 1740947457, 'Created character <b>Vegeta</b>.'),
(10, 0, 0x00000000000000000000000000000001, 1740950663, 'Created character <b>Vegetto</b>.'),
(10, 0, 0x00000000000000000000000000000001, 1740950672, 'Created character <b>Gohan</b>.'),
(10, 0, 0x00000000000000000000000000000001, 1740950699, 'Created character <b>Trunks</b>.'),
(10, 0, 0x00000000000000000000000000000001, 1740958279, 'Created character <b>Gotens</b>.'),
(10, 0, 0x00000000000000000000000000000001, 1740958347, 'Created character <b>Picolo</b>.'),
(10, 0, 0x00000000000000000000000000000001, 1740958363, 'Created character <b>Krilin</b>.'),
(10, 0, 0x00000000000000000000000000000001, 1740958375, 'Created character <b>Dende</b>.'),
(18, 0, 0x00000000000000000000000000000001, 1740961293, 'Account created.'),
(18, 0, 0x00000000000000000000000000000001, 1740961293, 'Created character <b>Shin</b>.'),
(18, 0, 0x00000000000000000000000000000001, 1740961843, 'Created character <b>Shii</b>.'),
(18, 0, 0x00000000000000000000000000000001, 1740961926, 'Created character <b>Freezer</b>.'),
(18, 0, 0x00000000000000000000000000000001, 1740961937, 'Created character <b>Cooler</b>.'),
(18, 0, 0x00000000000000000000000000000001, 1740961957, 'Created character <b>Andro</b>.'),
(18, 0, 0x00000000000000000000000000000001, 1740961968, 'Created character <b>Andri</b>.'),
(18, 0, 0x00000000000000000000000000000001, 1740961982, 'Created character <b>Cell</b>.'),
(18, 0, 0x00000000000000000000000000000001, 1740961993, 'Created character <b>Tenshin</b>.'),
(18, 0, 0x00000000000000000000000000000001, 1740962007, 'Created character <b>Buus</b>.'),
(18, 0, 0x00000000000000000000000000000001, 1740962017, 'Created character <b>Bebi</b>.'),
(19, 0, 0x00000000000000000000000000000001, 1740964140, 'Account created.'),
(19, 0, 0x00000000000000000000000000000001, 1740964140, 'Created character <b>Ubbs</b>.'),
(19, 0, 0x00000000000000000000000000000001, 1740964163, 'Created character <b>Bardo</b>.'),
(19, 0, 0x00000000000000000000000000000001, 1740964173, 'Created character <b>Brolly</b>.'),
(19, 0, 0x00000000000000000000000000000001, 1740964190, 'Created character <b>Janemba</b>.'),
(19, 0, 0x00000000000000000000000000000001, 1740964211, 'Created character <b>Roshi</b>.'),
(19, 0, 0x00000000000000000000000000000001, 1740964226, 'Created character <b>Tapion</b>.'),
(19, 0, 0x00000000000000000000000000000001, 1740964252, 'Created character <b>Androo</b>.'),
(20, 422476302, 0x00000000000000000000000000000000, 1741306109, 'Account created.'),
(21, 423707164, 0x00000000000000000000000000000000, 1741306206, 'Account created.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_admin_menu`
--

CREATE TABLE `myaac_admin_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `page` varchar(255) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `flags` int(11) NOT NULL DEFAULT 0,
  `enabled` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_bugtracker`
--

CREATE TABLE `myaac_bugtracker` (
  `account` varchar(255) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `text` text NOT NULL,
  `id` int(11) NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `reply` int(11) NOT NULL DEFAULT 0,
  `who` int(11) NOT NULL DEFAULT 0,
  `uid` int(11) NOT NULL,
  `tag` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_changelog`
--

CREATE TABLE `myaac_changelog` (
  `id` int(11) NOT NULL,
  `body` varchar(500) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 - added, 2 - removed, 3 - changed, 4 - fixed',
  `where` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 - server, 2 - site',
  `date` int(11) NOT NULL DEFAULT 0,
  `player_id` int(11) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `myaac_changelog`
--

INSERT INTO `myaac_changelog` (`id`, `body`, `type`, `where`, `date`, `player_id`, `hidden`) VALUES
(1, 'MyAAC installed. (:', 3, 2, 1650032074, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_config`
--

CREATE TABLE `myaac_config` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `value` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `myaac_config`
--

INSERT INTO `myaac_config` (`id`, `name`, `value`) VALUES
(1, 'database_version', '33'),
(2, 'status_online', '1'),
(3, 'status_players', '0'),
(4, 'status_playersMax', '150'),
(5, 'status_lastCheck', '1746371213'),
(6, 'status_uptime', '61'),
(7, 'status_monsters', '4913'),
(8, 'last_usage_report', '1746371137'),
(9, 'views_counter', '3471'),
(10, 'status_uptimeReadable', '0h 1m'),
(11, 'status_motd', 'Welcome to The Brazzers!'),
(12, 'status_mapAuthor', 'Komic'),
(13, 'status_mapName', 'map'),
(14, 'status_mapWidth', '1000'),
(15, 'status_mapHeight', '1000'),
(16, 'status_server', 'The Forgotten Server'),
(17, 'status_serverVersion', '1.5 (Nekiro\'s 8.60 downgrade)'),
(18, 'status_clientVersion', '8.60');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_faq`
--

CREATE TABLE `myaac_faq` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(1020) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_forum`
--

CREATE TABLE `myaac_forum` (
  `id` int(11) NOT NULL,
  `first_post` int(11) NOT NULL DEFAULT 0,
  `last_post` int(11) NOT NULL DEFAULT 0,
  `section` int(3) NOT NULL DEFAULT 0,
  `replies` int(20) NOT NULL DEFAULT 0,
  `views` int(20) NOT NULL DEFAULT 0,
  `author_aid` int(20) NOT NULL DEFAULT 0,
  `author_guid` int(20) NOT NULL DEFAULT 0,
  `post_text` text NOT NULL,
  `post_topic` varchar(255) NOT NULL DEFAULT '',
  `post_smile` tinyint(1) NOT NULL DEFAULT 0,
  `post_html` tinyint(1) NOT NULL DEFAULT 0,
  `post_date` int(20) NOT NULL DEFAULT 0,
  `last_edit_aid` int(20) NOT NULL DEFAULT 0,
  `edit_date` int(20) NOT NULL DEFAULT 0,
  `post_ip` varchar(32) NOT NULL DEFAULT '0.0.0.0',
  `sticked` tinyint(1) NOT NULL DEFAULT 0,
  `closed` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_forum_boards`
--

CREATE TABLE `myaac_forum_boards` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `guild` int(11) NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 0,
  `closed` tinyint(1) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `myaac_forum_boards`
--

INSERT INTO `myaac_forum_boards` (`id`, `name`, `description`, `ordering`, `guild`, `access`, `closed`, `hidden`) VALUES
(1, 'News', 'News commenting', 0, 0, 0, 1, 0),
(2, 'Trade', 'Trade offers.', 1, 0, 0, 0, 0),
(3, 'Quests', 'Quest making.', 2, 0, 0, 0, 0),
(4, 'Pictures', 'Your pictures.', 3, 0, 0, 0, 0),
(5, 'Bug Report', 'Report bugs there.', 4, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_gallery`
--

CREATE TABLE `myaac_gallery` (
  `id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `myaac_gallery`
--

INSERT INTO `myaac_gallery` (`id`, `comment`, `image`, `thumb`, `author`, `ordering`, `hidden`) VALUES
(1, 'Demon', 'images/gallery/demon.jpg', 'images/gallery/demon_thumb.gif', 'MyAAC', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_menu`
--

CREATE TABLE `myaac_menu` (
  `id` int(11) NOT NULL,
  `template` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `blank` tinyint(1) NOT NULL DEFAULT 0,
  `color` varchar(6) NOT NULL DEFAULT '',
  `category` int(11) NOT NULL DEFAULT 1,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `enabled` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `myaac_menu`
--

INSERT INTO `myaac_menu` (`id`, `template`, `name`, `link`, `blank`, `color`, `category`, `ordering`, `enabled`) VALUES
(1, 'kathrine', 'Latest News', 'news', 0, '', 1, 0, 1),
(2, 'kathrine', 'News Archive', 'news/archive', 0, '', 1, 1, 1),
(3, 'kathrine', 'Changelog', 'changelog', 0, '', 1, 2, 1),
(4, 'kathrine', 'Account Management', 'account/manage', 0, '', 2, 0, 1),
(5, 'kathrine', 'Create Account', 'account/create', 0, '', 2, 1, 1),
(6, 'kathrine', 'Lost Account?', 'account/lost', 0, '', 2, 2, 1),
(7, 'kathrine', 'Server Rules', 'rules', 0, '', 2, 3, 1),
(8, 'kathrine', 'Downloads', 'downloads', 0, '', 5, 4, 1),
(9, 'kathrine', 'Report Bug', 'bugtracker', 0, '', 2, 5, 1),
(10, 'kathrine', 'Who is Online?', 'online', 0, '', 3, 0, 1),
(11, 'kathrine', 'Characters', 'characters', 0, '', 3, 1, 1),
(12, 'kathrine', 'Guilds', 'guilds', 0, '', 3, 2, 1),
(13, 'kathrine', 'Highscores', 'highscores', 0, '', 3, 3, 1),
(14, 'kathrine', 'Last Deaths', 'lastkills', 0, '', 3, 4, 1),
(15, 'kathrine', 'Houses', 'houses', 0, '', 3, 5, 1),
(16, 'kathrine', 'Bans', 'bans', 0, '', 3, 6, 1),
(17, 'kathrine', 'Forum', 'forum', 0, '', 3, 7, 1),
(18, 'kathrine', 'Team', 'team', 0, '', 3, 8, 1),
(19, 'kathrine', 'Monsters', 'creatures', 0, '', 5, 0, 1),
(20, 'kathrine', 'Spells', 'spells', 0, '', 5, 1, 1),
(21, 'kathrine', 'Server Info', 'serverInfo', 0, '', 5, 2, 1),
(22, 'kathrine', 'Commands', 'commands', 0, '', 5, 3, 1),
(23, 'kathrine', 'Gallery', 'gallery', 0, '', 5, 4, 1),
(24, 'kathrine', 'Experience Table', 'experienceTable', 0, '', 5, 5, 1),
(25, 'kathrine', 'FAQ', 'faq', 0, '', 5, 6, 1),
(26, 'kathrine', 'Buy Points', 'points', 0, '', 6, 0, 1),
(27, 'kathrine', 'Shop Offer', 'gifts', 0, '', 6, 1, 1),
(28, 'kathrine', 'Shop History', 'gifts/history', 0, '', 6, 2, 1),
(29, 'tibiacom', 'Latest News', 'news', 0, '', 1, 0, 1),
(30, 'tibiacom', 'News Archive', 'news/archive', 0, '', 1, 1, 1),
(31, 'tibiacom', 'Changelog', 'changelog', 0, '', 1, 2, 1),
(32, 'tibiacom', 'Account Management', 'account/manage', 0, '', 2, 0, 1),
(33, 'tibiacom', 'Create Account', 'account/create', 0, '', 2, 1, 1),
(34, 'tibiacom', 'Lost Account?', 'account/lost', 0, '', 2, 2, 1),
(35, 'tibiacom', 'Server Rules', 'rules', 0, '', 2, 3, 1),
(36, 'tibiacom', 'Downloads', 'downloads', 0, '', 2, 4, 1),
(37, 'tibiacom', 'Report Bug', 'bugtracker', 0, '', 2, 5, 1),
(38, 'tibiacom', 'Characters', 'characters', 0, '', 3, 0, 1),
(39, 'tibiacom', 'Who Is Online?', 'online', 0, '', 3, 1, 1),
(40, 'tibiacom', 'Highscores', 'highscores', 0, '', 3, 2, 1),
(41, 'tibiacom', 'Last Kills', 'lastkills', 0, '', 3, 3, 1),
(42, 'tibiacom', 'Houses', 'houses', 0, '', 3, 4, 1),
(43, 'tibiacom', 'Guilds', 'guilds', 0, '', 3, 5, 1),
(44, 'tibiacom', 'Polls', 'polls', 0, '', 3, 6, 1),
(45, 'tibiacom', 'Bans', 'bans', 0, '', 3, 7, 1),
(46, 'tibiacom', 'Support List', 'team', 0, '', 3, 8, 1),
(47, 'tibiacom', 'Forum', 'forum', 0, '', 4, 0, 1),
(48, 'tibiacom', 'Creatures', 'creatures', 0, '', 5, 0, 1),
(49, 'tibiacom', 'Spells', 'spells', 0, '', 5, 1, 1),
(50, 'tibiacom', 'Commands', 'commands', 0, '', 5, 2, 1),
(51, 'tibiacom', 'Exp Stages', 'experienceStages', 0, '', 5, 3, 1),
(52, 'tibiacom', 'Gallery', 'gallery', 0, '', 5, 4, 1),
(53, 'tibiacom', 'Server Info', 'serverInfo', 0, '', 5, 5, 1),
(54, 'tibiacom', 'Experience Table', 'experienceTable', 0, '', 5, 6, 1),
(55, 'tibiacom', 'Buy Points', 'points', 0, '', 6, 0, 1),
(56, 'tibiacom', 'Shop Offer', 'gifts', 0, '', 6, 1, 1),
(57, 'tibiacom', 'Shop History', 'gifts/history', 0, '', 6, 2, 1),
(58, 'atomio', 'Home', 'news', 0, '', 7, 0, 1),
(59, 'atomio', 'News Archive', 'news/archive', 0, '', 7, 1, 1),
(60, 'atomio', 'Changelog', 'changelog', 0, '', 7, 2, 1),
(61, 'atomio', 'Rules', 'rules', 0, '', 7, 3, 1),
(62, 'atomio', 'Forum', 'forum', 0, '', 7, 4, 1),
(63, 'atomio', 'My Account', 'account/manage', 0, '', 2, 0, 1),
(64, 'atomio', 'Create Account', 'account/create', 0, '', 2, 1, 1),
(65, 'atomio', 'Lost Account Interface', 'account/lost', 0, '', 2, 2, 1),
(66, 'atomio', 'Downloads', 'downloads', 0, '', 2, 3, 1),
(67, 'atomio', 'Search Character', 'characters', 0, '', 3, 0, 1),
(68, 'atomio', 'Who is online', 'online', 0, '', 3, 1, 1),
(69, 'atomio', 'Highscores', 'highscores', 0, '', 3, 2, 1),
(70, 'atomio', 'Last Kills', 'lastkills', 0, '', 3, 3, 1),
(71, 'atomio', 'Houses', 'houses', 0, '', 3, 4, 1),
(72, 'atomio', 'Guilds', 'guilds', 0, '', 3, 5, 1),
(73, 'atomio', 'Bans', 'bans', 0, '', 3, 6, 1),
(74, 'atomio', 'Creatures', 'creatures', 0, '', 5, 0, 1),
(75, 'atomio', 'Spells', 'spells', 0, '', 5, 1, 1),
(76, 'atomio', 'Commands', 'commands', 0, '', 5, 2, 1),
(77, 'atomio', 'Server Info', 'serverInfo', 0, '', 5, 3, 1),
(78, 'atomio', 'Gallery', 'gallery', 0, '', 5, 4, 1),
(79, 'atomio', 'Experience Stages', 'experienceStages', 0, '', 5, 5, 1),
(80, 'atomio', 'Experience Table', 'experienceTable', 0, '', 5, 6, 1),
(81, 'atomio', 'Team', 'team', 0, '', 8, 0, 1),
(82, 'atomio', 'FAQ', 'faq', 0, '', 8, 1, 1),
(83, 'atomio', 'Report bug(s)', 'bugtracker', 0, '', 8, 2, 1),
(84, 'atomio', 'Buy Points', 'points', 0, '', 6, 0, 1),
(85, 'atomio', 'Gifts', 'gifts', 0, '', 6, 1, 1),
(86, 'atomio', 'History', 'gifts/history', 0, '', 6, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_monsters`
--

CREATE TABLE `myaac_monsters` (
  `id` int(11) NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `mana` int(11) NOT NULL DEFAULT 0,
  `exp` int(11) NOT NULL,
  `health` int(11) NOT NULL,
  `speed_lvl` int(11) NOT NULL DEFAULT 1,
  `use_haste` tinyint(1) NOT NULL,
  `voices` text NOT NULL,
  `immunities` varchar(255) NOT NULL,
  `elements` text NOT NULL,
  `summonable` tinyint(1) NOT NULL,
  `convinceable` tinyint(1) NOT NULL,
  `pushable` tinyint(1) NOT NULL DEFAULT 0,
  `canpushitems` tinyint(1) NOT NULL DEFAULT 0,
  `canwalkonenergy` tinyint(1) NOT NULL DEFAULT 0,
  `canwalkonpoison` tinyint(1) NOT NULL DEFAULT 0,
  `canwalkonfire` tinyint(1) NOT NULL DEFAULT 0,
  `runonhealth` tinyint(1) NOT NULL DEFAULT 0,
  `hostile` tinyint(1) NOT NULL DEFAULT 0,
  `attackable` tinyint(1) NOT NULL DEFAULT 0,
  `rewardboss` tinyint(1) NOT NULL DEFAULT 0,
  `defense` int(11) NOT NULL DEFAULT 0,
  `armor` int(11) NOT NULL DEFAULT 0,
  `canpushcreatures` tinyint(1) NOT NULL DEFAULT 0,
  `race` varchar(255) NOT NULL,
  `loot` text NOT NULL,
  `summons` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `myaac_monsters`
--

INSERT INTO `myaac_monsters` (`id`, `hidden`, `name`, `mana`, `exp`, `health`, `speed_lvl`, `use_haste`, `voices`, `immunities`, `elements`, `summonable`, `convinceable`, `pushable`, `canpushitems`, `canwalkonenergy`, `canwalkonpoison`, `canwalkonfire`, `runonhealth`, `hostile`, `attackable`, `rewardboss`, `defense`, `armor`, `canpushcreatures`, `race`, `loot`, `summons`) VALUES
(677, 0, 'Rabbit', 220, 0, 15, 1, 0, '[]', '[]', '', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'blood', '[{\"id\":2666,\"count\":\"2\",\"chance\":\"82000\"},{\"id\":\"2684\",\"count\":\"2\",\"chance\":\"10000\"}]', ''),
(678, 0, 'Rat', 200, 5, 20, 1, 0, '[\"Meep!\"]', '[]', '', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'blood', '[{\"id\":2148,\"count\":\"4\",\"chance\":\"100000\"},{\"id\":\"2696\",\"count\":1,\"chance\":\"39410\"}]', ''),
(679, 0, 'Demon', 0, 6000, 8200, 30, 1, '[\"MUHAHAHAHA!\",\"I SMELL FEEEEEAAAR!\",\"CHAMEK ATH UTHUL ARAK!\",\"Your resistance is futile!\",\"Your soul will be mine!\"]', '[\"lifedrain\",\"paralyze\",\"invisible\"]', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'fire', '[{\"id\":\"2148\",\"count\":\"90\",\"chance\":\"28000\"},{\"id\":\"2148\",\"count\":\"80\",\"chance\":\"28000\"},{\"id\":\"2148\",\"count\":\"75\",\"chance\":\"28000\"},{\"id\":\"2148\",\"count\":\"65\",\"chance\":\"28000\"},{\"id\":\"7368\",\"count\":\"5\",\"chance\":\"3100\"},{\"id\":\"5954\",\"count\":1,\"chance\":\"1150\"},{\"id\":\"2520\",\"count\":1,\"chance\":\"750\"},{\"id\":\"2462\",\"count\":1,\"chance\":\"3000\"},{\"id\":\"2387\",\"count\":1,\"chance\":\"21000\"},{\"id\":\"2432\",\"count\":1,\"chance\":\"6000\"},{\"id\":\"2795\",\"count\":\"6\",\"chance\":\"12500\"},{\"id\":\"2393\",\"count\":1,\"chance\":\"1650\"},{\"id\":\"2179\",\"count\":1,\"chance\":\"700\"},{\"id\":\"2418\",\"count\":1,\"chance\":\"1650\"},{\"id\":\"7590\",\"count\":1,\"chance\":\"10000\"},{\"id\":\"7590\",\"count\":1,\"chance\":\"10000\"},{\"id\":\"7590\",\"count\":1,\"chance\":\"10000\"},{\"id\":\"2396\",\"count\":1,\"chance\":\"1000\"},{\"id\":\"1987\",\"count\":1,\"chance\":\"100000\"},{\"id\":\"2472\",\"count\":1,\"chance\":\"150\"},{\"id\":\"2514\",\"count\":1,\"chance\":\"550\"},{\"id\":\"2176\",\"count\":1,\"chance\":\"3000\"},{\"id\":\"2152\",\"count\":\"3\",\"chance\":\"23750\"},{\"id\":\"1982\",\"count\":1,\"chance\":\"1000\"},{\"id\":\"2214\",\"count\":1,\"chance\":\"900\"},{\"id\":\"2149\",\"count\":1,\"chance\":\"10000\"},{\"id\":\"2165\",\"count\":1,\"chance\":\"1500\"},{\"id\":\"2151\",\"count\":1,\"chance\":\"3300\"},{\"id\":\"8473\",\"count\":1,\"chance\":\"12500\"},{\"id\":\"8473\",\"count\":1,\"chance\":\"12500\"},{\"id\":\"8473\",\"count\":1,\"chance\":\"12500\"},{\"id\":\"2171\",\"count\":1,\"chance\":\"1200\"},{\"id\":\"2164\",\"count\":1,\"chance\":\"800\"},{\"id\":\"7382\",\"count\":1,\"chance\":\"950\"},{\"id\":\"2470\",\"count\":1,\"chance\":\"450\"},{\"id\":\"7393\",\"count\":1,\"chance\":\"50\"}]', ''),
(680, 0, 'Dragon', 0, 700, 1000, 1, 0, '[\"GROOAAARRR\",\"FCHHHHH\"]', '[\"paralyze\",\"invisible\"]', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'blood', '[{\"id\":\"2148\",\"count\":\"70\",\"chance\":\"37500\"},{\"id\":\"2148\",\"count\":\"50\",\"chance\":\"37500\"},{\"id\":\"2546\",\"count\":\"12\",\"chance\":\"4000\"},{\"id\":\"2672\",\"count\":\"3\",\"chance\":\"15500\"},{\"id\":\"2406\",\"count\":1,\"chance\":\"25000\"},{\"id\":\"2398\",\"count\":1,\"chance\":\"21500\"},{\"id\":\"2509\",\"count\":1,\"chance\":\"14000\"},{\"id\":\"2455\",\"count\":1,\"chance\":\"10000\"},{\"id\":\"2397\",\"count\":1,\"chance\":\"5000\"},{\"id\":\"1987\",\"count\":1,\"chance\":\"100000\"},{\"id\":\"2457\",\"count\":1,\"chance\":\"3000\"},{\"id\":\"2647\",\"count\":1,\"chance\":\"2000\"},{\"id\":\"2413\",\"count\":1,\"chance\":\"1950\"},{\"id\":\"7588\",\"count\":1,\"chance\":\"1750\"},{\"id\":\"2387\",\"count\":1,\"chance\":\"1333\"},{\"id\":\"2187\",\"count\":1,\"chance\":\"1200\"},{\"id\":\"5920\",\"count\":1,\"chance\":\"850\"},{\"id\":\"2434\",\"count\":1,\"chance\":\"600\"},{\"id\":\"5877\",\"count\":1,\"chance\":\"500\"},{\"id\":\"2145\",\"count\":1,\"chance\":\"500\"},{\"id\":\"2516\",\"count\":1,\"chance\":\"400\"},{\"id\":\"2409\",\"count\":1,\"chance\":\"400\"},{\"id\":\"7430\",\"count\":1,\"chance\":\"250\"},{\"id\":\"2177\",\"count\":1,\"chance\":\"150\"}]', ''),
(681, 0, 'Dragon Lord', 0, 2100, 1900, 1, 0, '[\"ZCHHHHH\",\"YOU WILL BURN!\"]', '[\"paralyze\",\"invisible\",\"fire\"]', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'blood', '[{\"id\":2148,\"count\":\"100\",\"chance\":\"95000\"},{\"id\":2148,\"count\":\"100\",\"chance\":\"95000\"},{\"id\":2148,\"count\":\"45\",\"chance\":\"95000\"},{\"id\":2672,\"count\":\"5\",\"chance\":\"80000\"},{\"id\":2796,\"count\":1,\"chance\":\"12000\"},{\"id\":7378,\"count\":\"3\",\"chance\":\"9000\"},{\"id\":\"1976\",\"count\":1,\"chance\":\"9000\"},{\"id\":2547,\"count\":\"7\",\"chance\":\"6700\"},{\"id\":2167,\"count\":1,\"chance\":\"5250\"},{\"id\":2146,\"count\":1,\"chance\":\"5300\"},{\"id\":2033,\"count\":1,\"chance\":\"3190\"},{\"id\":5882,\"count\":1,\"chance\":\"1920\"},{\"id\":5948,\"count\":1,\"chance\":\"1040\"},{\"id\":7588,\"count\":1,\"chance\":\"970\"},{\"id\":2177,\"count\":1,\"chance\":\"680\"},{\"id\":2479,\"count\":1,\"chance\":\"360\"},{\"id\":2392,\"count\":1,\"chance\":\"290\"},{\"id\":2528,\"count\":1,\"chance\":\"250\"},{\"id\":2498,\"count\":1,\"chance\":\"280\"},{\"id\":2492,\"count\":1,\"chance\":\"170\"},{\"id\":7402,\"count\":1,\"chance\":\"110\"},{\"id\":7399,\"count\":1,\"chance\":\"90\"}]', ''),
(682, 0, 'Elf Arcanist', 0, 175, 220, 5, 0, '[\"Feel my wrath!\",\"For the Daughter of the Stars!\",\"I\'ll bring balance upon you!\",\"Tha\'shi Cenath!\",\"Vihil Ealuel!\"]', '[\"invisible\"]', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'blood', '[{\"id\":\"2148\",\"count\":\"49\",\"chance\":\"10000\"},{\"id\":\"2544\",\"count\":\"3\",\"chance\":\"3000\"},{\"id\":\"1949\",\"count\":1,\"chance\":\"31000\"},{\"id\":\"2260\",\"count\":1,\"chance\":\"16000\"},{\"id\":\"2401\",\"count\":1,\"chance\":\"11500\"},{\"id\":\"2642\",\"count\":1,\"chance\":\"100000\"},{\"id\":\"2682\",\"count\":1,\"chance\":\"19000\"},{\"id\":\"2689\",\"count\":1,\"chance\":\"14000\"},{\"id\":\"2652\",\"count\":1,\"chance\":\"7250\"},{\"id\":\"2747\",\"count\":1,\"chance\":\"8250\"},{\"id\":\"2032\",\"count\":1,\"chance\":\"5250\"},{\"id\":\"2600\",\"count\":1,\"chance\":\"11750\"},{\"id\":\"2802\",\"count\":1,\"chance\":\"4250\"},{\"id\":\"2047\",\"count\":1,\"chance\":\"22000\"},{\"id\":\"1987\",\"count\":1,\"chance\":\"100000\"},{\"id\":\"2198\",\"count\":1,\"chance\":\"1666\"},{\"id\":\"5922\",\"count\":\"2\",\"chance\":\"1500\"},{\"id\":\"7589\",\"count\":1,\"chance\":\"3500\"},{\"id\":\"7618\",\"count\":1,\"chance\":\"3500\"},{\"id\":\"2189\",\"count\":1,\"chance\":\"400\"},{\"id\":\"2177\",\"count\":1,\"chance\":\"950\"},{\"id\":\"2154\",\"count\":1,\"chance\":\"375\"}]', ''),
(683, 0, 'Elf Scout', 360, 75, 160, 1, 0, '[\"Tha\'shi Ab\'Dendriel!\",\"Feel the sting of my arrows!\",\"Thy blood will quench the soil\'s thirst!\",\"Evicor guide my arrow.\",\"Your existence will end here!\"]', '[\"invisible\"]', '', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'blood', '[{\"id\":2031,\"count\":1,\"chance\":\"1350\"},{\"id\":2148,\"count\":\"25\",\"chance\":\"75000\"},{\"id\":2456,\"count\":1,\"chance\":\"4000\"},{\"id\":2544,\"count\":\"12\",\"chance\":\"30710\"},{\"id\":2545,\"count\":\"4\",\"chance\":\"15400\"},{\"id\":2642,\"count\":1,\"chance\":\"1180\"},{\"id\":2681,\"count\":1,\"chance\":\"17750\"},{\"id\":\"5921\",\"count\":1,\"chance\":\"1130\"},{\"id\":7438,\"count\":1,\"chance\":\"140\"},{\"id\":10552,\"count\":1,\"chance\":\"5200\"},{\"id\":12420,\"count\":1,\"chance\":\"9750\"}]', ''),
(684, 0, 'Elf', 320, 42, 100, 1, 0, '[\"Ulathil beia Thratha!\",\"Bahaha aka!\",\"You are not welcome here.\",\"Flee as long as you can.\",\"Death to the defilers!\"]', '[\"invisible\"]', '', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'blood', '[{\"id\":\"2148\",\"count\":\"30\",\"chance\":\"25000\"},{\"id\":\"2544\",\"count\":\"6\",\"chance\":\"2250\"},{\"id\":\"2674\",\"count\":\"2\",\"chance\":\"15000\"},{\"id\":\"2397\",\"count\":1,\"chance\":\"12000\"},{\"id\":\"2643\",\"count\":1,\"chance\":\"12500\"},{\"id\":\"1987\",\"count\":1,\"chance\":\"100000\"},{\"id\":\"2510\",\"count\":1,\"chance\":\"9000\"},{\"id\":\"2484\",\"count\":1,\"chance\":\"9000\"},{\"id\":\"2482\",\"count\":1,\"chance\":\"13500\"},{\"id\":\"5921\",\"count\":1,\"chance\":\"1000\"}]', ''),
(685, 0, 'Orc', 300, 25, 70, 1, 0, '[\"Grak brrretz!\",\"Grow truk grrrrr.\",\"Prek tars, dekklep zurk.\"]', '[]', '', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'blood', '[{\"id\":\"2148\",\"count\":\"15\",\"chance\":\"17500\"},{\"id\":\"2666\",\"count\":\"2\",\"chance\":\"22500\"},{\"id\":\"1987\",\"count\":1,\"chance\":\"100000\"},{\"id\":\"2484\",\"count\":1,\"chance\":\"15000\"},{\"id\":\"2482\",\"count\":1,\"chance\":\"10000\"},{\"id\":\"2526\",\"count\":1,\"chance\":\"1600\"},{\"id\":\"2385\",\"count\":1,\"chance\":\"17500\"},{\"id\":\"2386\",\"count\":1,\"chance\":\"18000\"}]', ''),
(686, 0, 'Orc Leader', 640, 270, 450, 1, 0, '[\"Ulderek futgyr human!\"]', '[\"invisible\",\"fire\"]', '', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'blood', '[{\"id\":2148,\"count\":\"35\",\"chance\":\"28000\"},{\"id\":2207,\"count\":1,\"chance\":\"3920\"},{\"id\":2397,\"count\":1,\"chance\":\"2800\"},{\"id\":2410,\"count\":\"4\",\"chance\":\"9950\"},{\"id\":2413,\"count\":1,\"chance\":\"610\"},{\"id\":\"2419\",\"count\":1,\"chance\":\"1860\"},{\"id\":2463,\"count\":1,\"chance\":\"1650\"},{\"id\":2475,\"count\":1,\"chance\":\"180\"},{\"id\":2478,\"count\":1,\"chance\":\"3100\"},{\"id\":2510,\"count\":1,\"chance\":\"1650\"},{\"id\":2647,\"count\":1,\"chance\":\"440\"},{\"id\":\"2667\",\"count\":1,\"chance\":\"29400\"},{\"id\":2789,\"count\":1,\"chance\":\"9650\"},{\"id\":7378,\"count\":1,\"chance\":\"2400\"},{\"id\":7618,\"count\":1,\"chance\":\"550\"},{\"id\":11113,\"count\":1,\"chance\":\"1030\"},{\"id\":12435,\"count\":1,\"chance\":\"19510\"},{\"id\":12436,\"count\":1,\"chance\":\"2008\"}]', ''),
(687, 0, 'Orc Warrior', 360, 50, 125, 1, 0, '[\"Grow truk grrrr.\",\"Trak grrrr brik.\",\"Alk!\"]', '[]', '', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'blood', '[{\"id\":\"2148\",\"count\":\"15\",\"chance\":\"30000\"},{\"id\":\"2385\",\"count\":1,\"chance\":\"51850\"},{\"id\":\"2512\",\"count\":1,\"chance\":\"23333\"},{\"id\":\"2666\",\"count\":1,\"chance\":\"16000\"},{\"id\":\"1987\",\"count\":1,\"chance\":\"100000\"},{\"id\":\"2464\",\"count\":1,\"chance\":\"10750\"},{\"id\":\"2007\",\"count\":1,\"chance\":\"9750\"},{\"id\":\"2530\",\"count\":1,\"chance\":\"400\"},{\"id\":\"2448\",\"count\":1,\"chance\":\"400\"},{\"id\":\"2411\",\"count\":1,\"chance\":\"400\"}]', ''),
(688, 0, 'Orc Spearman', 310, 38, 105, 1, 0, '[\"Ugaar!\"]', '[]', '', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'blood', '[{\"id\":2148,\"count\":\"11\",\"chance\":\"25050\"},{\"id\":2389,\"count\":1,\"chance\":\"17440\"},{\"id\":2420,\"count\":1,\"chance\":\"3000\"},{\"id\":2468,\"count\":1,\"chance\":\"10000\"},{\"id\":2482,\"count\":1,\"chance\":\"9000\"},{\"id\":2666,\"count\":1,\"chance\":\"30200\"},{\"id\":11113,\"count\":1,\"chance\":\"150\"},{\"id\":12435,\"count\":1,\"chance\":\"2300\"}]', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_news`
--

CREATE TABLE `myaac_news` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 - news, 2 - ticker, 3 - article',
  `date` int(11) NOT NULL DEFAULT 0,
  `category` tinyint(1) NOT NULL DEFAULT 0,
  `player_id` int(11) NOT NULL DEFAULT 0,
  `last_modified_by` int(11) NOT NULL DEFAULT 0,
  `last_modified_date` int(11) NOT NULL DEFAULT 0,
  `comments` varchar(50) NOT NULL DEFAULT '',
  `article_text` varchar(300) NOT NULL DEFAULT '',
  `article_image` varchar(100) NOT NULL DEFAULT '',
  `hidden` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `myaac_news`
--

INSERT INTO `myaac_news` (`id`, `title`, `body`, `type`, `date`, `category`, `player_id`, `last_modified_by`, `last_modified_date`, `comments`, `article_text`, `article_image`, `hidden`) VALUES
(1, 'Hello!', 'MyAAC is just READY to use!', 1, 1650032088, 2, 1, 0, 0, 'https://my-aac.org', '', '', 0),
(2, 'Hello tickets!', 'https://my-aac.org', 2, 1650032088, 4, 1, 0, 0, '', '', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_news_categories`
--

CREATE TABLE `myaac_news_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(50) NOT NULL DEFAULT '',
  `icon_id` int(2) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `myaac_news_categories`
--

INSERT INTO `myaac_news_categories` (`id`, `name`, `description`, `icon_id`, `hidden`) VALUES
(1, '', '', 0, 0),
(2, '', '', 1, 0),
(3, '', '', 2, 0),
(4, '', '', 3, 0),
(5, '', '', 4, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_notepad`
--

CREATE TABLE `myaac_notepad` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_pages`
--

CREATE TABLE `myaac_pages` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `body` text NOT NULL,
  `date` int(11) NOT NULL DEFAULT 0,
  `player_id` int(11) NOT NULL DEFAULT 0,
  `php` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - plain html, 1 - php',
  `enable_tinymce` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 - enabled, 0 - disabled',
  `access` tinyint(2) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `myaac_pages`
--

INSERT INTO `myaac_pages` (`id`, `name`, `title`, `body`, `date`, `player_id`, `php`, `enable_tinymce`, `access`, `hidden`) VALUES
(1, 'downloads', 'Downloads', '<p>&nbsp;</p>\n<p>&nbsp;</p>\n<div style=\"text-align: center;\">We\'re using official Tibia Client <strong>{{ config.client / 100 }}</strong><br />\n<p>Download Tibia Client <strong>{{ config.client / 100 }}</strong>&nbsp;for Windows <a href=\"https://drive.google.com/drive/folders/0B2-sMQkWYzhGSFhGVlY2WGk5czQ\" target=\"_blank\" rel=\"noopener\">HERE</a>.</p>\n<h2>IP Changer:</h2>\n<a href=\"https://static.otland.net/ipchanger.exe\" target=\"_blank\" rel=\"noopener\">HERE</a></div>', 0, 1, 0, 1, 1, 0),
(2, 'commands', 'Commands', '<table style=\"border-collapse: collapse; width: 87.8471%; height: 57px;\" border=\"1\">\n<tbody>\n<tr style=\"height: 18px;\">\n<td style=\"width: 33.3333%; background-color: #505050; height: 18px;\"><span style=\"color: #ffffff;\"><strong>Words</strong></span></td>\n<td style=\"width: 33.3333%; background-color: #505050; height: 18px;\"><span style=\"color: #ffffff;\"><strong>Description</strong></span></td>\n</tr>\n<tr style=\"height: 18px; background-color: #f1e0c6;\">\n<td style=\"width: 33.3333%; height: 18px;\"><em>!example</em></td>\n<td style=\"width: 33.3333%; height: 18px;\">This is just an example</td>\n</tr>\n<tr style=\"height: 18px; background-color: #d4c0a1;\">\n<td style=\"width: 33.3333%; height: 18px;\"><em>!buyhouse</em></td>\n<td style=\"width: 33.3333%; height: 18px;\">Buy house you are looking at</td>\n</tr>\n<tr style=\"height: 18px; background-color: #f1e0c6;\">\n<td style=\"width: 33.3333%; height: 18px;\"><em>!aol</em></td>\n<td style=\"width: 33.3333%; height: 18px;\">Buy AoL</td>\n</tr>\n</tbody>\n</table>', 0, 1, 0, 1, 1, 0),
(3, 'rules_on_the_page', 'Rules', '1. Names\na) Names which contain insulting (e.g. \"Bastard\"), racist (e.g. \"Nigger\"), extremely right-wing (e.g. \"Hitler\"), sexist (e.g. \"Bitch\") or offensive (e.g. \"Copkiller\") language.\nb) Names containing parts of sentences (e.g. \"Mike returns\"), nonsensical combinations of letters (e.g. \"Fgfshdsfg\") or invalid formattings (e.g. \"Thegreatknight\").\nc) Names that obviously do not describe a person (e.g. \"Christmastree\", \"Matrix\"), names of real life celebrities (e.g. \"Britney Spears\"), names that refer to real countries (e.g. \"Swedish Druid\"), names which were created to fake other players\' identities (e.g. \"Arieswer\" instead of \"Arieswar\") or official positions (e.g. \"System Admin\").\n\n2. Cheating\na) Exploiting obvious errors of the game (\"bugs\"), for instance to duplicate items. If you find an error you must report it to CipSoft immediately.\nb) Intentional abuse of weaknesses in the gameplay, for example arranging objects or players in a way that other players cannot move them.\nc) Using tools to automatically perform or repeat certain actions without any interaction by the player (\"macros\").\nd) Manipulating the client program or using additional software to play the game.\ne) Trying to steal other players\' account data (\"hacking\").\nf) Playing on more than one account at the same time (\"multi-clienting\").\ng) Offering account data to other players or accepting other players\' account data (\"account-trading/sharing\").\n\n3. Gamemasters\na) Threatening a gamemaster because of his or her actions or position as a gamemaster.\nb) Pretending to be a gamemaster or to have influence on the decisions of a gamemaster.\nc) Intentionally giving wrong or misleading information to a gamemaster concerning his or her investigations or making false reports about rule violations.\n\n4. Player Killing\na) Excessive killing of characters who are not marked with a \"skull\" on worlds which are not PvP-enforced. Please note that killing marked characters is not a reason for a banishment.\n\nA violation of the Tibia Rules may lead to temporary banishment of characters and accounts. In severe cases removal or modification of character skills, attributes and belongings, as well as the permanent removal of accounts without any compensation may be considered. The sanction is based on the seriousness of the rule violation and the previous record of the player. It is determined by the gamemaster imposing the banishment.\n\nThese rules may be changed at any time. All changes will be announced on the official website.', 0, 1, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_spells`
--

CREATE TABLE `myaac_spells` (
  `id` int(11) NOT NULL,
  `spell` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL,
  `words` varchar(255) NOT NULL DEFAULT '',
  `category` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 - attack, 2 - healing, 3 - summon, 4 - supply, 5 - support',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 - instant, 2 - conjure, 3 - rune',
  `level` int(11) NOT NULL DEFAULT 0,
  `maglevel` int(11) NOT NULL DEFAULT 0,
  `mana` int(11) NOT NULL DEFAULT 0,
  `soul` tinyint(3) NOT NULL DEFAULT 0,
  `conjure_id` int(11) NOT NULL DEFAULT 0,
  `conjure_count` tinyint(3) NOT NULL DEFAULT 0,
  `reagent` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `premium` tinyint(1) NOT NULL DEFAULT 0,
  `vocations` varchar(100) NOT NULL DEFAULT '',
  `hidden` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `myaac_spells`
--

INSERT INTO `myaac_spells` (`id`, `spell`, `name`, `words`, `category`, `type`, `level`, `maglevel`, `mana`, `soul`, `conjure_id`, `conjure_count`, `reagent`, `item_id`, `premium`, `vocations`, `hidden`) VALUES
(180, '', 'Berserk', 'exori', 0, 1, 0, 0, 115, 0, 0, 0, 0, 0, 0, '[4,8]', 0),
(181, '', 'Death Strike', 'exori mort', 0, 1, 0, 0, 20, 0, 0, 0, 0, 0, 0, '[1,5]', 0),
(182, '', 'Divine Caldera', 'exevo mas san', 0, 1, 0, 0, 160, 0, 0, 0, 0, 0, 0, '[3,7]', 0),
(183, '', 'Divine Missile', 'exori san', 0, 1, 0, 0, 20, 0, 0, 0, 0, 0, 0, '[3,7]', 0),
(184, '', 'Energy Beam', 'exevo vis lux', 0, 1, 0, 0, 40, 0, 0, 0, 0, 0, 0, '[1,5]', 0),
(185, '', 'Energy Strike', 'exori vis', 0, 1, 0, 0, 20, 0, 0, 0, 0, 0, 0, '[1,2,5,6]', 0),
(186, '', 'Energy Wave', 'exevo vis hur', 0, 1, 0, 0, 170, 0, 0, 0, 0, 0, 0, '[1,5]', 0),
(187, '', 'Eternal Winter', 'exevo gran mas frigo', 0, 1, 0, 0, 1050, 0, 0, 0, 0, 0, 0, '[2,6]', 0),
(188, '', 'Ethereal Spear', 'exori con', 0, 1, 0, 0, 25, 0, 0, 0, 0, 0, 0, '[3,7]', 0),
(189, '', 'Fierce Berserk', 'exori gran', 0, 1, 0, 0, 340, 0, 0, 0, 0, 0, 0, '[4,8]', 0),
(190, '', 'Fire Wave', 'exevo flam hur', 0, 1, 0, 0, 25, 0, 0, 0, 0, 0, 0, '[1,5]', 0),
(191, '', 'Flame Strike', 'exori flam', 0, 1, 0, 0, 20, 0, 0, 0, 0, 0, 0, '[1,2,5,6]', 0),
(192, '', 'Great Energy Beam', 'exevo gran vis lux', 0, 1, 0, 0, 110, 0, 0, 0, 0, 0, 0, '[1,5]', 0),
(193, '', 'Groundshaker', 'exori mas', 0, 1, 0, 0, 160, 0, 0, 0, 0, 0, 0, '[4,8]', 0),
(194, '', 'Hell\'s Core', 'exevo gran mas flam', 0, 1, 0, 0, 1100, 0, 0, 0, 0, 0, 0, '[1,5]', 0),
(195, '', 'Ice Strike', 'exori frigo', 0, 1, 0, 0, 20, 0, 0, 0, 0, 0, 0, '[1,5,2,6]', 0),
(196, '', 'Ice Wave', 'exevo frigo hur', 0, 1, 0, 0, 25, 0, 0, 0, 0, 0, 0, '[2,6]', 0),
(197, '', 'Rage of the Skies', 'exevo gran mas vis', 0, 1, 0, 0, 600, 0, 0, 0, 0, 0, 0, '[1,5]', 0),
(198, '', 'Terra Strike', 'exori tera', 0, 1, 0, 0, 20, 0, 0, 0, 0, 0, 0, '[1,5,2,6]', 0),
(199, '', 'Terra Wave', 'exevo tera hur', 0, 1, 0, 0, 210, 0, 0, 0, 0, 0, 0, '[2,6]', 0),
(200, '', 'Whirlwind Throw', 'exori hur', 0, 1, 0, 0, 40, 0, 0, 0, 0, 0, 0, '[4,8]', 0),
(201, '', 'Wrath of Nature', 'exevo gran mas tera', 0, 1, 0, 0, 700, 0, 0, 0, 0, 0, 0, '[2,6]', 0),
(202, '', 'Cure Poison', 'exana pox', 0, 1, 0, 0, 30, 0, 0, 0, 0, 0, 0, '[1,2,3,4,5,6,7,8]', 0),
(203, '', 'Divine Healing', 'exura san', 0, 1, 0, 0, 160, 0, 0, 0, 0, 0, 0, '[3,7]', 0),
(204, '', 'Heal Friend', 'exura sio', 0, 1, 0, 0, 140, 0, 0, 0, 0, 0, 0, '[2,6]', 0),
(205, '', 'Intense Healing', 'exura gran', 0, 1, 0, 0, 70, 0, 0, 0, 0, 0, 0, '[1,2,3,5,6,7]', 0),
(206, '', 'Light Healing', 'exura', 0, 1, 0, 0, 20, 0, 0, 0, 0, 0, 0, '[1,2,3,5,6,7]', 0),
(207, '', 'Mass Healing', 'exura gran mas res', 0, 1, 0, 0, 150, 0, 0, 0, 0, 0, 0, '[2,6]', 0),
(208, '', 'Ultimate Healing', 'exura vita', 0, 1, 0, 0, 160, 0, 0, 0, 0, 0, 0, '[1,2,5,6]', 0),
(209, '', 'Blood Rage', 'utito tempo', 0, 1, 0, 0, 290, 0, 0, 0, 0, 0, 0, '[4,8]', 0),
(210, '', 'Cancel Invisibility', 'exana ina', 0, 1, 0, 0, 200, 0, 0, 0, 0, 0, 0, '[3,7]', 0),
(211, '', 'Challenge', 'exeta res', 0, 1, 0, 0, 30, 0, 0, 0, 0, 0, 0, '[8]', 0),
(212, '', 'Charge', 'utani tempo hur', 0, 1, 0, 0, 100, 0, 0, 0, 0, 0, 0, '[4,8]', 0),
(213, '', 'Creature Illusion', 'utevo res ina', 0, 1, 0, 0, 100, 0, 0, 0, 0, 0, 0, '[1,2,5,6]', 0),
(214, '', 'Find Person', 'exiva', 0, 1, 0, 0, 20, 0, 0, 0, 0, 0, 0, '[1,2,3,4,5,6,7,8]', 0),
(215, '', 'Food', 'exevo pan', 0, 1, 0, 0, 120, 1, 0, 0, 0, 0, 0, '[2,6]', 0),
(216, '', 'Great Light', 'utevo gran lux', 0, 1, 0, 0, 60, 0, 0, 0, 0, 0, 0, '[1,2,3,4,5,6,7,8]', 0),
(217, '', 'Haste', 'utani hur', 0, 1, 0, 0, 60, 0, 0, 0, 0, 0, 0, '[1,2,3,4,5,6,7,8]', 0),
(218, '', 'Invisibility', 'utana vid', 0, 1, 0, 0, 440, 0, 0, 0, 0, 0, 0, '[1,2,5,6]', 0),
(219, '', 'Levitate', 'exani hur', 0, 1, 0, 0, 50, 0, 0, 0, 0, 0, 0, '[1,2,3,4,5,6,7,8]', 0),
(220, '', 'Light', 'utevo lux', 0, 1, 0, 0, 20, 0, 0, 0, 0, 0, 0, '[1,2,3,4,5,6,7,8]', 0),
(221, '', 'Magic Rope', 'exani tera', 0, 1, 0, 0, 20, 0, 0, 0, 0, 0, 0, '[1,2,3,4,5,6,7,8]', 0),
(222, '', 'Magic Shield', 'utamo vita', 0, 1, 0, 0, 50, 0, 0, 0, 0, 0, 0, '[1,2,5,6]', 0),
(223, '', 'Protector', 'utamo tempo', 0, 1, 0, 0, 200, 0, 0, 0, 0, 0, 0, '[4,8]', 0),
(224, '', 'Sharpshooter', 'utito tempo san', 0, 1, 0, 0, 450, 0, 0, 0, 0, 0, 0, '[3,7]', 0),
(225, '', 'Strong Haste', 'utani gran hur', 0, 1, 0, 0, 100, 0, 0, 0, 0, 0, 0, '[1,2,5,6]', 0),
(226, '', 'Summon Creature', 'utevo res', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '[1,2,5,6]', 0),
(227, '', 'Swift Foot', 'utamo tempo san', 0, 1, 0, 0, 400, 0, 0, 0, 0, 0, 0, '[3,7]', 0),
(228, '', 'Ultimate Light', 'utevo vis lux', 0, 1, 0, 0, 140, 0, 0, 0, 0, 0, 0, '[1,2,5,6]', 0),
(229, '', 'Enchant Party', 'utori mas sio', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '[1,5]', 0),
(230, '', 'Heal Party', 'utura mas sio', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '[2,6]', 0),
(231, '', 'Protect Party', 'utamo mas sio', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '[3,7]', 0),
(232, '', 'Train Party', 'utito mas sio', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '[4,8]', 0),
(233, '', 'Animate Dead Rune', 'adana mort', 0, 1, 0, 0, 600, 5, 0, 0, 0, 0, 0, '[1,2,5,6]', 0),
(234, '', 'Arrow Call', 'exevo infir con', 0, 1, 0, 0, 10, 1, 0, 0, 0, 0, 0, '[3,7]', 0),
(235, '', 'Avalanche Rune', 'adori mas frigo', 0, 1, 0, 0, 530, 3, 0, 0, 0, 0, 0, '[2,6]', 0),
(236, '', 'Blank Rune', 'adori blank', 0, 1, 0, 0, 50, 1, 0, 0, 0, 0, 0, '[2,6,3,7,1,5]', 0),
(237, '', 'Chameleon Rune', 'adevo ina', 0, 1, 0, 0, 600, 2, 0, 0, 0, 0, 0, '[2,6]', 0),
(238, '', 'Conjure Arrow', 'exevo con', 0, 1, 0, 0, 100, 1, 0, 0, 0, 0, 0, '[3,7]', 0),
(239, '', 'Conjure Bolt', 'exevo con mort', 0, 1, 0, 0, 140, 2, 0, 0, 0, 0, 0, '[3,7]', 0),
(240, '', 'Conjure Explosive Arrow', 'exevo con flam', 0, 1, 0, 0, 290, 3, 0, 0, 0, 0, 0, '[3,7]', 0),
(241, '', 'Conjure Piercing Bolt', 'exevo con grav', 0, 1, 0, 0, 180, 3, 0, 0, 0, 0, 0, '[3,7]', 0),
(242, '', 'Conjure Poisoned Arrow', 'exevo con pox', 0, 1, 0, 0, 130, 2, 0, 0, 0, 0, 0, '[3,7]', 0),
(243, '', 'Conjure Power Bolt', 'exevo con vis', 0, 1, 0, 0, 700, 4, 0, 0, 0, 0, 0, '[7]', 0),
(244, '', 'Conjure Sniper Arrow', 'exevo con hur', 0, 1, 0, 0, 160, 3, 0, 0, 0, 0, 0, '[3,7]', 0),
(245, '', 'Convince Creature Rune', 'adeta sio', 0, 1, 0, 0, 200, 3, 0, 0, 0, 0, 0, '[2,6]', 0),
(246, '', 'Cure Poison Rune', 'adana pox', 0, 1, 0, 0, 200, 1, 0, 0, 0, 0, 0, '[2,6]', 0),
(247, '', 'Destroy Field Rune', 'adito grav', 0, 1, 0, 0, 120, 2, 0, 0, 0, 0, 0, '[1,2,3,5,6,7]', 0),
(248, '', 'Disintegrate Rune', 'adito tera', 0, 1, 0, 0, 200, 3, 0, 0, 0, 0, 0, '[1,2,3,5,6,7]', 0),
(249, '', 'Enchant Spear', 'exeta con', 0, 1, 0, 0, 350, 3, 0, 0, 0, 0, 0, '[3,7]', 0),
(250, '', 'Enchant Staff', 'exeta vis', 0, 1, 0, 0, 80, 0, 0, 0, 0, 0, 0, '[5]', 0),
(251, '', 'Energy Bomb Rune', 'adevo mas vis', 0, 1, 0, 0, 880, 5, 0, 0, 0, 0, 0, '[1,5]', 0),
(252, '', 'Energy Field Rune', 'adevo grav vis', 0, 1, 0, 0, 320, 2, 0, 0, 0, 0, 0, '[1,2,5,6]', 0),
(253, '', 'Energy Wall Rune', 'adevo mas grav vis', 0, 1, 0, 0, 1000, 5, 0, 0, 0, 0, 0, '[1,2,5,6]', 0),
(254, '', 'Explosion Rune', 'adevo mas hur', 0, 1, 0, 0, 570, 4, 0, 0, 0, 0, 0, '[1,2,5,6]', 0),
(255, '', 'Fire Field Rune', 'adevo grav flam', 0, 1, 0, 0, 240, 1, 0, 0, 0, 0, 0, '[1,2,5,6]', 0),
(256, '', 'Fire Bomb Rune', 'adevo mas flam', 0, 1, 0, 0, 600, 4, 0, 0, 0, 0, 0, '[1,2,5,6]', 0),
(257, '', 'Fire Wall Rune', 'adevo mas grav flam', 0, 1, 0, 0, 780, 4, 0, 0, 0, 0, 0, '[1,2,5,6]', 0),
(258, '', 'Fireball Rune', 'adori flam', 0, 1, 0, 0, 460, 3, 0, 0, 0, 0, 0, '[1,5]', 0),
(259, '', 'Great Fireball Rune', 'adori mas flam', 0, 1, 0, 0, 530, 3, 0, 0, 0, 0, 0, '[1,5]', 0),
(260, '', 'Heavy Magic Missile Rune', 'adori vis', 0, 1, 0, 0, 350, 2, 0, 0, 0, 0, 0, '[1,5,2,6]', 0),
(261, '', 'Holy Missile Rune', 'adori san', 0, 1, 0, 0, 300, 3, 0, 0, 0, 0, 0, '[3,7]', 0),
(262, '', 'Icicle Rune', 'adori frigo', 0, 1, 0, 0, 460, 3, 0, 0, 0, 0, 0, '[2,6]', 0),
(263, '', 'Intense Healing Rune', 'adura gran', 0, 1, 0, 0, 120, 2, 0, 0, 0, 0, 0, '[2,6]', 0),
(264, '', 'Magic Wall Rune', 'adevo grav tera', 0, 1, 0, 0, 750, 5, 0, 0, 0, 0, 0, '[1,5]', 0),
(265, '', 'Paralyze Rune', 'adana ani', 0, 1, 0, 0, 1400, 3, 0, 0, 0, 0, 0, '[2,6]', 0),
(266, '', 'Poison Bomb Rune', 'adevo mas pox', 0, 1, 0, 0, 520, 2, 0, 0, 0, 0, 0, '[2,6]', 0),
(267, '', 'Poison Field Rune', 'adevo grav pox', 0, 1, 0, 0, 200, 1, 0, 0, 0, 0, 0, '[1,2,5,6]', 0),
(268, '', 'Poison Wall Rune', 'adevo mas grav pox', 0, 1, 0, 0, 640, 3, 0, 0, 0, 0, 0, '[1,2,5,6]', 0),
(269, '', 'Practice Magic Missile Rune', 'adori dis min vis', 0, 1, 0, 0, 5, 0, 0, 0, 0, 0, 0, '[0]', 0),
(270, '', 'Soulfire Rune', 'adevo res flam', 0, 1, 0, 0, 420, 3, 0, 0, 0, 0, 0, '[1,2,5,6]', 0),
(271, '', 'Stalagmite Rune', 'adori tera', 0, 1, 0, 0, 350, 2, 0, 0, 0, 0, 0, '[1,5,2,6]', 0),
(272, '', 'Stone Shower Rune', 'adori mas tera', 0, 1, 0, 0, 430, 3, 0, 0, 0, 0, 0, '[2,6]', 0),
(273, '', 'Sudden Death Rune', 'adori gran mort', 0, 1, 0, 0, 985, 5, 0, 0, 0, 0, 0, '[1,5]', 0),
(274, '', 'Thunderstorm Rune', 'adori mas vis', 0, 1, 0, 0, 430, 3, 0, 0, 0, 0, 0, '[1,5]', 0),
(275, '', 'Ultimate Healing Rune', 'adura vita', 0, 1, 0, 0, 400, 3, 0, 0, 0, 0, 0, '[2,6]', 0),
(276, '', 'Wild Growth Rune', 'adevo grav vita', 0, 1, 0, 0, 600, 5, 0, 0, 0, 0, 0, '[2,6]', 0),
(277, '', 'House Door List', 'aleta grav', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '[]', 0),
(278, '', 'House Guest List', 'aleta sio', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '[]', 0),
(279, '', 'House Kick', 'alana sio', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '[]', 0),
(280, '', 'House Subowner List', 'aleta som', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '[]', 0),
(281, '', 'Avalanche Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2274, 0, '[]', 0),
(282, '', 'Energy Bomb Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2262, 0, '[]', 0),
(283, '', 'Energy Field Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2277, 0, '[]', 0),
(284, '', 'Energy Wall Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2279, 0, '[]', 0),
(285, '', 'Explosion Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2313, 0, '[]', 0),
(286, '', 'Fire Bomb Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2305, 0, '[]', 0),
(287, '', 'Fire Field Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2301, 0, '[]', 0),
(288, '', 'Fire Wall Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2303, 0, '[]', 0),
(289, '', 'Fireball Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2302, 0, '[]', 0),
(290, '', 'Great Fireball Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2304, 0, '[]', 0),
(291, '', 'Heavy Magic Missile Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2311, 0, '[]', 0),
(292, '', 'Holy Missile Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2295, 0, '[3,7]', 0),
(293, '', 'Icicle Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2271, 0, '[]', 0),
(294, '', 'Magic Wall Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2293, 0, '[]', 0),
(295, '', 'Poison Bomb Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2286, 0, '[]', 0),
(296, '', 'Poison Field Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2285, 0, '[]', 0),
(297, '', 'Poison Wall Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2289, 0, '[]', 0),
(298, '', 'Soulfire Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2308, 0, '[]', 0),
(299, '', 'Stalagmite Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2292, 0, '[]', 0),
(300, '', 'Stone Shower Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2288, 0, '[]', 0),
(301, '', 'Sudden Death Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2268, 0, '[]', 0),
(302, '', 'Thunderstorm Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2315, 0, '[]', 0),
(303, '', 'Cure Poison Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2266, 0, '[]', 0),
(304, '', 'Intense Healing Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2265, 0, '[]', 0),
(305, '', 'Ultimate Healing Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2273, 0, '[]', 0),
(306, '', 'Animate Dead Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2316, 0, '[]', 0),
(307, '', 'Convince Creature Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2290, 0, '[]', 0),
(308, '', 'Chameleon Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2291, 0, '[]', 0),
(309, '', 'Disintegrate Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2310, 0, '[]', 0),
(310, '', 'Destroy Field Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2261, 0, '[]', 0),
(311, '', 'Wild Growth Rune Rune', '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 2269, 0, '[2,6]', 0),
(312, '', 'Paralyze Rune Rune', '', 0, 3, 0, 0, 1400, 0, 0, 0, 0, 2278, 0, '[2,6]', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_videos`
--

CREATE TABLE `myaac_videos` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `youtube_id` varchar(20) NOT NULL,
  `author` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_visitors`
--

CREATE TABLE `myaac_visitors` (
  `ip` varchar(45) NOT NULL,
  `lastvisit` int(11) NOT NULL DEFAULT 0,
  `page` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `myaac_visitors`
--

INSERT INTO `myaac_visitors` (`ip`, `lastvisit`, `page`) VALUES
('::1', 1746371213, '/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myaac_weapons`
--

CREATE TABLE `myaac_weapons` (
  `id` int(11) NOT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `maglevel` int(11) NOT NULL DEFAULT 0,
  `vocations` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `myaac_weapons`
--

INSERT INTO `myaac_weapons` (`id`, `level`, `maglevel`, `vocations`) VALUES
(1294, 0, 0, '[]'),
(2111, 0, 0, '[]'),
(2181, 26, 0, '{\"2\":true}'),
(2182, 7, 0, '{\"2\":true}'),
(2183, 33, 0, '{\"2\":true}'),
(2185, 19, 0, '{\"2\":true}'),
(2186, 13, 0, '{\"2\":true}'),
(2187, 33, 0, '{\"1\":true}'),
(2188, 19, 0, '{\"1\":true}'),
(2189, 26, 0, '{\"1\":true}'),
(2190, 7, 0, '{\"1\":true}'),
(2191, 13, 0, '{\"1\":true}'),
(2377, 20, 0, '{\"4\":true}'),
(2378, 0, 0, '{\"4\":true}'),
(2381, 25, 0, '[]'),
(2387, 25, 0, '{\"4\":true}'),
(2389, 0, 0, '[]'),
(2390, 140, 0, '{\"4\":true}'),
(2391, 50, 0, '{\"4\":true}'),
(2392, 30, 0, '[]'),
(2393, 55, 0, '{\"4\":true}'),
(2396, 0, 0, '[]'),
(2399, 0, 0, '[]'),
(2400, 80, 0, '[]'),
(2407, 30, 0, '[]'),
(2408, 120, 0, '{\"4\":true}'),
(2410, 0, 0, '[]'),
(2413, 0, 0, '{\"4\":true}'),
(2414, 60, 0, '[]'),
(2415, 95, 0, '{\"4\":true}'),
(2421, 85, 0, '[]'),
(2423, 20, 0, '[]'),
(2424, 45, 0, '[]'),
(2425, 20, 0, '[]'),
(2426, 25, 0, '[]'),
(2427, 55, 0, '[]'),
(2429, 20, 0, '[]'),
(2430, 25, 0, '[]'),
(2431, 90, 0, '[]'),
(2432, 35, 0, '[]'),
(2434, 25, 0, '[]'),
(2435, 20, 0, '[]'),
(2436, 30, 0, '[]'),
(2438, 30, 0, '[]'),
(2440, 25, 0, '{\"4\":true}'),
(2443, 70, 0, '{\"4\":true}'),
(2444, 65, 0, '{\"4\":true}'),
(2445, 35, 0, '[]'),
(2446, 45, 0, '[]'),
(2447, 50, 0, '{\"4\":true}'),
(2451, 35, 0, '[]'),
(2452, 70, 0, '{\"4\":true}'),
(2453, 75, 0, '[]'),
(2454, 65, 0, '{\"4\":true}'),
(2543, 0, 0, '[]'),
(2544, 0, 0, '[]'),
(2545, 0, 0, '[]'),
(2546, 0, 0, '[]'),
(2547, 55, 0, '[]'),
(3961, 40, 0, '[]'),
(3962, 30, 0, '[]'),
(3965, 20, 0, '[]'),
(5803, 75, 0, '{\"3\":true}'),
(6528, 75, 0, '{\"4\":true}'),
(6529, 110, 0, '[]'),
(6553, 75, 0, '{\"4\":true}'),
(7363, 30, 0, '[]'),
(7364, 20, 0, '[]'),
(7365, 40, 0, '[]'),
(7366, 0, 0, '[]'),
(7367, 42, 0, '[]'),
(7368, 80, 0, '[]'),
(7378, 25, 0, '[]'),
(7379, 25, 0, '[]'),
(7380, 35, 0, '{\"4\":true}'),
(7381, 20, 0, '[]'),
(7382, 60, 0, '{\"4\":true}'),
(7383, 50, 0, '[]'),
(7384, 60, 0, '[]'),
(7385, 20, 0, '[]'),
(7386, 40, 0, '{\"4\":true}'),
(7387, 25, 0, '[]'),
(7388, 55, 0, '[]'),
(7389, 60, 0, '[]'),
(7390, 75, 0, '[]'),
(7391, 50, 0, '{\"4\":true}'),
(7392, 35, 0, '[]'),
(7402, 45, 0, '{\"4\":true}'),
(7403, 65, 0, '{\"4\":true}'),
(7404, 40, 0, '[]'),
(7405, 70, 0, '{\"4\":true}'),
(7406, 35, 0, '{\"4\":true}'),
(7407, 30, 0, '{\"4\":true}'),
(7408, 25, 0, '[]'),
(7409, 50, 0, '[]'),
(7410, 55, 0, '[]'),
(7411, 50, 0, '[]'),
(7412, 45, 0, '[]'),
(7413, 40, 0, '{\"4\":true}'),
(7414, 60, 0, '{\"4\":true}'),
(7415, 60, 0, '[]'),
(7416, 55, 0, '[]'),
(7417, 65, 0, '[]'),
(7418, 70, 0, '[]'),
(7419, 40, 0, '[]'),
(7420, 70, 0, '[]'),
(7421, 65, 0, '[]'),
(7422, 75, 0, '[]'),
(7423, 85, 0, '{\"4\":true}'),
(7424, 30, 0, '[]'),
(7425, 20, 0, '[]'),
(7426, 40, 0, '[]'),
(7427, 45, 0, '[]'),
(7428, 55, 0, '{\"4\":true}'),
(7429, 75, 0, '[]'),
(7430, 30, 0, '[]'),
(7431, 80, 0, '[]'),
(7432, 20, 0, '[]'),
(7433, 65, 0, '[]'),
(7434, 75, 0, '[]'),
(7435, 85, 0, '[]'),
(7436, 45, 0, '{\"4\":true}'),
(7437, 30, 0, '[]'),
(7449, 25, 0, '{\"4\":true}'),
(7450, 120, 0, '{\"4\":true}'),
(7451, 35, 0, '[]'),
(7452, 30, 0, '{\"4\":true}'),
(7453, 85, 0, '{\"4\":true}'),
(7454, 30, 0, '{\"4\":true}'),
(7455, 80, 0, '[]'),
(7456, 35, 0, '[]'),
(7744, 0, 0, '[]'),
(7745, 50, 0, '[]'),
(7746, 60, 0, '[]'),
(7747, 35, 0, '{\"4\":true}'),
(7748, 45, 0, '{\"4\":true}'),
(7749, 20, 0, '[]'),
(7750, 25, 0, '[]'),
(7751, 60, 0, '[]'),
(7752, 35, 0, '{\"4\":true}'),
(7753, 65, 0, '{\"4\":true}'),
(7754, 20, 0, '[]'),
(7755, 35, 0, '[]'),
(7756, 60, 0, '[]'),
(7757, 35, 0, '[]'),
(7758, 50, 0, '{\"4\":true}'),
(7763, 0, 0, '[]'),
(7764, 50, 0, '[]'),
(7765, 60, 0, '[]'),
(7766, 35, 0, '{\"4\":true}'),
(7767, 45, 0, '{\"4\":true}'),
(7768, 20, 0, '[]'),
(7769, 25, 0, '[]'),
(7770, 60, 0, '[]'),
(7771, 35, 0, '{\"4\":true}'),
(7772, 65, 0, '{\"4\":true}'),
(7773, 20, 0, '[]'),
(7774, 35, 0, '[]'),
(7775, 60, 0, '[]'),
(7776, 35, 0, '[]'),
(7777, 50, 0, '{\"4\":true}'),
(7838, 20, 0, '[]'),
(7839, 20, 0, '[]'),
(7840, 20, 0, '[]'),
(7850, 20, 0, '[]'),
(7854, 0, 0, '[]'),
(7855, 50, 0, '[]'),
(7856, 60, 0, '[]'),
(7857, 35, 0, '{\"4\":true}'),
(7858, 45, 0, '{\"4\":true}'),
(7859, 20, 0, '[]'),
(7860, 25, 0, '[]'),
(7861, 60, 0, '[]'),
(7862, 35, 0, '{\"4\":true}'),
(7863, 65, 0, '{\"4\":true}'),
(7864, 20, 0, '[]'),
(7865, 35, 0, '[]'),
(7866, 60, 0, '[]'),
(7867, 35, 0, '[]'),
(7868, 50, 0, '{\"4\":true}'),
(7869, 0, 0, '[]'),
(7870, 50, 0, '[]'),
(7871, 60, 0, '[]'),
(7872, 35, 0, '{\"4\":true}'),
(7873, 45, 0, '{\"4\":true}'),
(7874, 20, 0, '[]'),
(7875, 25, 0, '[]'),
(7876, 60, 0, '[]'),
(7877, 35, 0, '{\"4\":true}'),
(7878, 65, 0, '{\"4\":true}'),
(7879, 20, 0, '[]'),
(7880, 35, 0, '[]'),
(7881, 60, 0, '[]'),
(7882, 35, 0, '[]'),
(7883, 50, 0, '{\"4\":true}'),
(8849, 45, 0, '{\"3\":true}'),
(8850, 60, 0, '{\"3\":true}'),
(8851, 130, 0, '{\"3\":true}'),
(8852, 100, 0, '{\"3\":true}'),
(8853, 80, 0, '{\"3\":true}'),
(8854, 80, 0, '{\"3\":true}'),
(8855, 50, 0, '{\"3\":true}'),
(8856, 60, 0, '{\"3\":true}'),
(8857, 40, 0, '{\"3\":true}'),
(8858, 70, 0, '{\"3\":true}'),
(8910, 42, 0, '{\"2\":true}'),
(8911, 22, 0, '{\"2\":true}'),
(8912, 37, 0, '{\"2\":true}'),
(8920, 37, 0, '{\"1\":true}'),
(8921, 22, 0, '{\"1\":true}'),
(8922, 42, 0, '{\"1\":true}'),
(8924, 110, 0, '[]'),
(8925, 130, 0, '[]'),
(8926, 120, 0, '{\"4\":true}'),
(8927, 120, 0, '[]'),
(8928, 100, 0, '[]'),
(8929, 100, 0, '{\"4\":true}'),
(8930, 100, 0, '[]'),
(8931, 120, 0, '[]'),
(8932, 100, 0, '{\"4\":true}'),
(11305, 60, 0, '[]'),
(11306, 50, 0, '{\"4\":true}'),
(11307, 55, 0, '[]'),
(11308, 55, 0, '{\"4\":true}'),
(11309, 20, 0, '{\"4\":true}'),
(11323, 25, 0, '[]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL DEFAULT 1,
  `account_id` int(11) NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 1,
  `vocation` int(11) NOT NULL DEFAULT 0,
  `health` int(11) NOT NULL DEFAULT 150,
  `healthmax` int(11) NOT NULL DEFAULT 150,
  `experience` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `lookbody` int(11) NOT NULL DEFAULT 0,
  `lookfeet` int(11) NOT NULL DEFAULT 0,
  `lookhead` int(11) NOT NULL DEFAULT 0,
  `looklegs` int(11) NOT NULL DEFAULT 0,
  `looktype` int(11) NOT NULL DEFAULT 136,
  `lookaddons` int(11) NOT NULL DEFAULT 0,
  `direction` tinyint(1) UNSIGNED NOT NULL DEFAULT 2,
  `maglevel` int(11) NOT NULL DEFAULT 0,
  `mana` int(11) NOT NULL DEFAULT 0,
  `manamax` int(11) NOT NULL DEFAULT 0,
  `manaspent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `soul` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `town_id` int(11) NOT NULL DEFAULT 1,
  `posx` int(11) NOT NULL DEFAULT 0,
  `posy` int(11) NOT NULL DEFAULT 0,
  `posz` int(11) NOT NULL DEFAULT 0,
  `conditions` blob NOT NULL,
  `cap` int(11) NOT NULL DEFAULT 400,
  `sex` int(11) NOT NULL DEFAULT 0,
  `lastlogin` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `lastip` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `save` tinyint(1) NOT NULL DEFAULT 1,
  `skull` tinyint(1) NOT NULL DEFAULT 0,
  `skulltime` bigint(20) NOT NULL DEFAULT 0,
  `lastlogout` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `blessings` tinyint(2) NOT NULL DEFAULT 0,
  `onlinetime` bigint(20) NOT NULL DEFAULT 0,
  `deletion` bigint(15) NOT NULL DEFAULT 0,
  `balance` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `offlinetraining_time` smallint(5) UNSIGNED NOT NULL DEFAULT 43200,
  `offlinetraining_skill` int(11) NOT NULL DEFAULT -1,
  `stamina` smallint(5) UNSIGNED NOT NULL DEFAULT 2520,
  `skill_fist` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_fist_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_club` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_club_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_sword` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_sword_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_axe` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_axe_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_dist` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_dist_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_shielding` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_shielding_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_fishing` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_fishing_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_runecraft` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_runecraft_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created` int(11) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `players`
--

INSERT INTO `players` (`id`, `name`, `group_id`, `account_id`, `level`, `vocation`, `health`, `healthmax`, `experience`, `lookbody`, `lookfeet`, `lookhead`, `looklegs`, `looktype`, `lookaddons`, `direction`, `maglevel`, `mana`, `manamax`, `manaspent`, `soul`, `town_id`, `posx`, `posy`, `posz`, `conditions`, `cap`, `sex`, `lastlogin`, `lastip`, `save`, `skull`, `skulltime`, `lastlogout`, `blessings`, `onlinetime`, `deletion`, `balance`, `offlinetraining_time`, `offlinetraining_skill`, `stamina`, `skill_fist`, `skill_fist_tries`, `skill_club`, `skill_club_tries`, `skill_sword`, `skill_sword_tries`, `skill_axe`, `skill_axe_tries`, `skill_dist`, `skill_dist_tries`, `skill_shielding`, `skill_shielding_tries`, `skill_fishing`, `skill_fishing_tries`, `skill_runecraft`, `skill_runecraft_tries`, `created`, `hidden`, `comment`, `description`) VALUES
(1, 'mclovin', 6, 1, 1, 0, 100, 100, 0, 10, 10, 10, 10, 139, 3, 1, 0, 100, 100, 0, 0, 1, 89, 130, 7, '', 0, 0, 1701364560, 16777343, 1, 0, 0, 1701365395, 0, 719670, 0, 0, 43200, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 1650032088, 0, '', ' [Reset: 4]'),
(3, 'Goku Sample', 1, 1, 1, 1, 350, 350, 0, 92, 124, 1, 67, 770, 0, 0, 0, 200, 200, 0, 100, 1, 80, 167, 7, '', 470, 1, 1669582519, 16777343, 1, 0, 0, 1669582520, 0, 3183, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 26, 129, 10, 0, 11, 2, 10, 0, 1650032089, 1, '', '0'),
(23, 'Vegeta Sample', 1, 1, 1, 21, 350, 350, 0, 220, 124, 1, 67, 785, 0, 2, 0, 300, 300, 0, 100, 1, 105, 913, 7, 0x010004000002ffffffff03204e00001a001b000000001c00fe, 470, 1, 1667274264, 277046462, 1, 0, 0, 1667274268, 0, 31, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1664116221, 0, '', '0'),
(24, 'Vegetto Sample', 1, 1, 1, 41, 300, 300, 0, 211, 124, 1, 67, 804, 0, 0, 0, 350, 350, 0, 100, 1, 80, 166, 7, 0x010004000002ffffffff03a08c00001a001b000000001c00fe, 470, 1, 1666217134, 16777343, 1, 0, 0, 1666217147, 0, 13, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1664116390, 0, '', '0'),
(28, 'Gohan Sample', 1, 1, 1, 61, 350, 350, 0, 92, 124, 1, 67, 813, 0, 3, 0, 200, 200, 0, 100, 1, 107, 914, 7, 0x010004000002ffffffff03c83200001a001b000000001c00fe, 470, 1, 1666218047, 16777343, 1, 0, 0, 1666218050, 0, 37, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1664636051, 0, '', '0'),
(41, 'Videl Sample', 1, 1, 1, 81, 350, 350, 0, 92, 124, 1, 67, 334, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670516906, 0, '', '0'),
(42, 'Pan Sample', 1, 1, 1, 101, 300, 300, 0, 92, 124, 1, 67, 330, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670516949, 0, '', '0'),
(43, 'Trunks Sample', 1, 1, 1, 121, 350, 350, 0, 92, 124, 1, 67, 821, 0, 2, 0, 200, 200, 0, 100, 1, 105, 913, 7, '', 470, 1, 1679234979, 1345807550, 1, 0, 0, 1679235039, 0, 83, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517070, 0, '', '0'),
(44, 'Goten Sample', 1, 1, 1, 141, 350, 350, 0, 92, 124, 1, 67, 831, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517089, 0, '', '0'),
(45, 'Chibi Trunks Sample', 1, 1, 1, 161, 350, 350, 0, 92, 124, 1, 67, 838, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517110, 0, '', '0'),
(46, 'Piccolo Sample', 1, 1, 1, 181, 300, 300, 0, 92, 124, 1, 67, 843, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517203, 0, '', '0'),
(47, 'Krillin Sample', 1, 1, 1, 201, 350, 350, 0, 92, 124, 1, 67, 850, 0, 3, 0, 200, 200, 0, 100, 1, 104, 913, 7, '', 470, 1, 1681872048, 16777343, 1, 0, 0, 1681872050, 0, 74, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517221, 0, '', '0'),
(48, 'Dende Sample', 1, 1, 1, 221, 350, 350, 0, 92, 124, 1, 67, 847, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(63, 'Lutz', 6, 9, 1, 0, 100, 100, 0, 10, 10, 10, 10, 136, 0, 3, 0, 100, 100, 0, 0, 1, 71, 165, 7, '', 0, 0, 1726349328, 3261216025, 1, 0, 0, 1726350224, 0, 11195, 0, 0, 43200, -1, 2520, 150, 150, 150, 150, 150, 150, 150, 150, 0, 0, 0, 0, 0, 0, 10, 0, 1701365390, 0, '', '0'),
(69, 'Insanity', 6, 10, 1781, 5, 325350, 317350, 93844879350, 36, 37, 80, 109, 354, 3, 3, 0, 228800, 238800, 0, 100, 1, 99, 189, 7, '', 44970, 1, 1744051615, 16777343, 1, 0, 0, 1744051644, 0, 315595, 0, 0, 43200, -1, 2520, 100, 0, 210, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1718331629, 0, '', '0'),
(74, 'Shin Sample', 1, 1, 1, 241, 350, 350, 0, 92, 124, 1, 67, 860, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(75, 'Freezer Sample', 1, 1, 1, 261, 350, 350, 0, 92, 124, 1, 67, 876, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(76, 'Cooler Sample', 1, 1, 1, 281, 350, 350, 0, 92, 124, 1, 67, 884, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(77, 'C17 Sample', 1, 1, 1, 301, 350, 350, 0, 92, 124, 1, 67, 895, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(78, 'C18 Sample', 1, 1, 1, 321, 350, 350, 0, 92, 124, 1, 67, 906, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(79, 'Cell Sample', 1, 1, 1, 341, 350, 350, 0, 92, 124, 1, 67, 902, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(80, 'Ten Shin Han Sample', 1, 1, 1, 361, 350, 350, 0, 92, 124, 1, 67, 921, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(81, 'Majin Buu Sample', 1, 1, 1, 381, 350, 350, 0, 92, 124, 1, 67, 913, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(82, 'Bebi Sample', 1, 1, 1, 401, 350, 350, 0, 92, 124, 1, 67, 951, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(84, 'Uub Sample', 1, 1, 1, 421, 350, 350, 0, 92, 124, 1, 67, 944, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(86, 'Bardock Sample', 1, 1, 1, 441, 350, 350, 0, 92, 124, 1, 67, 963, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(87, 'Brolly Sample', 1, 1, 1, 461, 350, 350, 0, 92, 124, 1, 67, 931, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(88, 'Janemba Sample', 1, 1, 1, 481, 350, 350, 0, 92, 124, 1, 67, 972, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(89, 'Beerus Sample', 1, 1, 1, 501, 350, 350, 0, 92, 124, 1, 67, 992, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(90, 'Goku Black Sample', 1, 1, 1, 521, 350, 350, 0, 92, 124, 1, 67, 980, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(91, 'Zamasu Sample', 1, 1, 1, 541, 350, 350, 0, 92, 124, 1, 67, 984, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(92, 'Cabba Sample', 1, 1, 1, 561, 350, 350, 0, 92, 124, 1, 67, 1023, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(93, 'Caulifla Sample', 1, 1, 1, 581, 350, 350, 0, 92, 124, 1, 67, 1007, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(94, 'Kale Sample', 1, 1, 1, 601, 350, 350, 0, 92, 124, 1, 67, 1029, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(95, 'Bergamo Sample', 1, 1, 1, 621, 350, 350, 0, 92, 124, 1, 67, 1012, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(96, 'Hit Sample', 1, 1, 1, 641, 350, 350, 0, 92, 124, 1, 67, 1000, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(97, 'Jiren Sample', 1, 1, 1, 661, 350, 350, 0, 92, 124, 1, 67, 1062, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(98, 'Kame Sample', 1, 1, 1, 681, 350, 350, 0, 92, 124, 1, 67, 1044, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(99, 'Tapion Sample', 1, 1, 1, 701, 350, 350, 0, 92, 124, 1, 67, 1036, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(100, 'C21 Sample', 1, 1, 1, 721, 350, 350, 0, 92, 124, 1, 67, 1063, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(101, 'Kefla Sample', 1, 1, 1, 741, 350, 350, 0, 92, 124, 1, 67, 1071, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(102, 'Dyspo Sample', 1, 1, 1, 761, 350, 350, 0, 92, 124, 1, 67, 1080, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(103, 'C13 Sample', 1, 1, 1, 781, 350, 350, 0, 92, 124, 1, 67, 658, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(104, 'Fuu Sample', 1, 1, 1, 841, 350, 350, 0, 92, 124, 1, 67, 754, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1670517241, 0, '', '0'),
(112, 'Nyxek', 1, 16, 1, 321, 350, 350, 0, 92, 124, 1, 67, 906, 0, 0, 0, 200, 200, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1726336422, 0, '', '0'),
(113, 'Nyxx', 1, 9, 204, 585, 91200, 91000, 137390472, 92, 124, 1, 67, 1010, 0, 2, 23, 44760, 44560, 0, 108, 1, 74, 166, 7, 0x010004000002ffffffff0360ea00001a001b000000001c00fe, 5545, 1, 1726351302, 3261216025, 1, 0, 0, 1726352269, 0, 7103, 0, 0, 43200, -1, 2516, 100, 178050, 93, 24391, 75, 6568, 10, 0, 51, 24, 31, 0, 45, 0, 10, 0, 1726345568, 0, '', '0'),
(121, 'Player', 1, 10, 300, 5, 277702, 310350, 441149800, 92, 124, 1, 67, 259, 0, 2, 161, 75700, 155200, 229500, 100, 1, 95, 216, 7, '', 470, 1, 1741499883, 16777343, 1, 0, 0, 1741500475, 0, 27236, 0, 0, 43200, -1, 2512, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 20, 241, 48, 380, 10, 0, 1740274074, 0, '', '0'),
(122, 'Vegeta', 1, 10, 400, 25, 119350, 95350, 1050833400, 220, 124, 1, 67, 4, 0, 3, 120, 80300, 56300, 1125000, 100, 1, 101, 187, 7, 0x010004000002ffffffff03906500001a001b000000001c00fe, 7970, 1, 1746371522, 16777343, 1, 0, 0, 1746371615, 0, 13826, 0, 0, 43200, -1, 2518, 100, 0, 120, 100, 100, 100, 100, 0, 10, 0, 80, 0, 80, 252, 10, 0, 1740947457, 0, '', '0'),
(123, 'Vegetto', 1, 10, 301, 45, 95400, 95300, 445540000, 211, 124, 1, 67, 424, 0, 1, 0, 56450, 56350, 0, 100, 1, 99, 190, 7, '', 7970, 1, 1744051400, 16777343, 1, 0, 0, 1744051401, 0, 1210, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1740950663, 0, '', '0'),
(124, 'Gohan', 1, 10, 301, 65, 93850, 93850, 445540000, 92, 124, 1, 67, 155, 0, 2, 0, 56200, 56200, 0, 100, 1, 97, 187, 7, '', 7970, 1, 1740966134, 16777343, 1, 0, 0, 1740966260, 0, 1294, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1740950672, 0, '', '0'),
(125, 'Trunks', 1, 10, 301, 125, 96850, 95350, 445540000, 92, 124, 1, 67, 41, 0, 0, 15, 1650, 56200, 5523, 100, 1, 100, 189, 7, '', 7970, 1, 1741497032, 16777343, 1, 0, 0, 1741497116, 0, 6625, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1740950699, 0, '', '0'),
(126, 'Gotens', 1, 10, 301, 165, 92042, 92350, 445540000, 92, 124, 1, 67, 6, 0, 0, 0, 60700, 60700, 0, 100, 1, 99, 189, 7, 0x010004000002ffffffff03f0d200001a001b000000001c00fe, 7970, 1, 1744050721, 16777343, 1, 0, 0, 1744050761, 0, 4832, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 14, 11, 0, 10, 0, 1740958279, 0, '', '0'),
(127, 'Picolo', 1, 10, 301, 185, 92300, 92300, 445540000, 92, 124, 1, 67, 106, 0, 0, 0, 66700, 66700, 0, 100, 1, 536, 311, 9, '', 3470, 1, 1741496755, 16777343, 1, 0, 0, 1741496758, 0, 32131, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1740958347, 0, '', '0'),
(128, 'Krilin', 1, 10, 301, 205, 87797, 92350, 445540000, 92, 124, 1, 67, 854, 0, 2, 0, 84700, 84700, 0, 100, 1, 99, 186, 7, 0x010004000002ffffffff0390e200001a001b000000001c00fe, 7970, 1, 1741188483, 16777343, 1, 0, 0, 1741188489, 0, 227, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 2, 10, 0, 10, 0, 1740958363, 0, '', '0'),
(129, 'Dende', 1, 10, 301, 225, 92350, 92350, 445540000, 92, 124, 1, 67, 221, 0, 2, 0, 90700, 90700, 0, 100, 1, 98, 186, 7, '', 3470, 1, 1744050761, 16777343, 1, 0, 0, 1744051208, 0, 879, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1740958375, 0, '', '0'),
(130, 'Shin', 1, 18, 301, 1, 72350, 72350, 445540000, 92, 124, 1, 67, 69, 0, 3, 0, 91700, 91700, 0, 100, 1, 99, 190, 7, '', 3470, 1, 1740961793, 16777343, 1, 0, 0, 1740961823, 0, 1599, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1740961293, 0, '', '0'),
(131, 'Shii', 1, 18, 301, 245, 92350, 92350, 445540000, 92, 124, 1, 67, 341, 0, 1, 0, 96700, 96700, 0, 100, 1, 99, 186, 7, '', 3470, 1, 1741126900, 16777343, 1, 0, 0, 1741126948, 0, 612, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1740961843, 0, '', '0'),
(132, 'Freezer', 1, 18, 301, 265, 92350, 92350, 445540000, 92, 124, 1, 67, 119, 0, 2, 0, 102700, 102700, 0, 100, 1, 99, 186, 7, 0x010004000002ffffffff0380bb00001a001b000000001c00fe, 7970, 1, 1741126894, 16777343, 1, 0, 0, 1741126900, 0, 1031, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1740961926, 0, '', '0'),
(133, 'Cooler', 1, 18, 301, 285, 92350, 92350, 445540000, 92, 124, 1, 67, 193, 0, 1, 0, 108400, 108400, 0, 100, 1, 100, 187, 7, 0x010004000002ffffffff0350c300001a001b000000001c00fe, 7970, 1, 1741126890, 16777343, 1, 0, 0, 1741126894, 0, 630, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1740961937, 0, '', '0'),
(134, 'Andro', 1, 18, 301, 305, 97750, 97750, 445540000, 92, 124, 1, 67, 2, 0, 2, 0, 114400, 114400, 0, 100, 1, 99, 186, 7, '', 7970, 1, 1741126855, 16777343, 1, 0, 0, 1741126866, 0, 348, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1740961957, 0, '', '0'),
(135, 'Andri', 1, 18, 301, 325, 95350, 95350, 445540000, 92, 124, 1, 67, 16, 0, 1, 0, 120100, 120100, 0, 100, 1, 99, 187, 7, 0x010004000002ffffffff03102700001a001b000000001c00fe, 7970, 1, 1741126851, 16777343, 1, 0, 0, 1741126855, 0, 165, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1740961968, 0, '', '0'),
(136, 'Cell', 1, 18, 301, 1, 75350, 75350, 445540000, 92, 124, 1, 67, 142, 0, 2, 0, 120200, 120200, 0, 100, 1, 99, 186, 7, '', 3470, 1, 1741126884, 16777343, 1, 0, 0, 1741126890, 0, 681, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1740961982, 0, '', '0'),
(137, 'Tenshin', 1, 18, 301, 365, 92350, 92350, 445540000, 92, 124, 1, 67, 926, 0, 2, 0, 132400, 132400, 0, 100, 1, 100, 189, 7, '', 7970, 1, 1741127372, 16777343, 1, 0, 0, 1741127379, 0, 623, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1740961993, 0, '', '0'),
(138, 'Buus', 1, 18, 301, 385, 91977, 92350, 445544500, 92, 124, 1, 67, 203, 0, 2, 0, 138400, 138400, 0, 100, 1, 99, 186, 7, '', 7970, 1, 1741126874, 16777343, 1, 0, 0, 1741126884, 0, 662, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 19, 10, 10, 10, 0, 1740962007, 0, '', '0'),
(139, 'Bebi', 1, 18, 301, 405, 92350, 92350, 445540000, 92, 124, 1, 67, 955, 0, 2, 0, 142900, 142900, 0, 100, 1, 100, 186, 7, '', 7970, 1, 1741126866, 16777343, 1, 0, 0, 1741126874, 0, 115, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1740962017, 0, '', '0'),
(140, 'Ubbs', 1, 19, 301, 425, 92350, 92350, 445540000, 92, 124, 1, 67, 235, 0, 2, 0, 150400, 150400, 0, 100, 1, 100, 188, 7, '', 7970, 1, 1740964568, 16777343, 1, 0, 0, 1740964602, 0, 509, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1740964140, 0, '', '0'),
(141, 'Bardo', 1, 19, 301, 445, 95350, 95350, 445540000, 92, 124, 1, 67, 200, 0, 2, 0, 56200, 56200, 0, 100, 1, 100, 186, 7, '', 7970, 1, 1740964809, 16777343, 1, 0, 0, 1740964834, 0, 387, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1740964163, 0, '', '0'),
(142, 'Brolly', 1, 19, 301, 465, 95350, 95350, 445540000, 92, 124, 1, 67, 39, 0, 2, 0, 56200, 56200, 0, 100, 1, 100, 186, 7, '', 7970, 1, 1740965227, 16777343, 1, 0, 0, 1740965312, 0, 690, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1740964173, 0, '', '0'),
(143, 'Janemba', 1, 19, 301, 485, 95350, 95350, 445540000, 92, 124, 1, 67, 134, 0, 3, 0, 56200, 56200, 0, 100, 1, 100, 186, 7, '', 7970, 1, 1740965675, 16777343, 1, 0, 0, 1740965756, 0, 752, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1740964190, 0, '', '0'),
(144, 'Roshi', 1, 19, 301, 685, 95350, 95350, 445540000, 92, 124, 1, 67, 1046, 0, 2, 0, 56200, 56200, 0, 100, 1, 99, 187, 7, 0x010004000002ffffffff03d8d600001a001b000000001c00fe, 7970, 1, 1740965756, 16777343, 1, 0, 0, 1740965790, 0, 101, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1740964211, 0, '', '0'),
(145, 'Tapion', 1, 19, 301, 705, 95350, 95350, 445540000, 92, 124, 1, 67, 494, 0, 2, 0, 56200, 56200, 0, 100, 1, 99, 187, 7, '', 7970, 1, 1740966110, 16777343, 1, 0, 0, 1740966264, 0, 693, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1740964226, 0, '', '0'),
(146, 'Androo', 1, 19, 301, 785, 95350, 95350, 445540000, 92, 124, 1, 67, 663, 0, 2, 0, 56200, 56200, 0, 100, 1, 99, 188, 7, '', 7970, 1, 1740966037, 16777343, 1, 0, 0, 1740966110, 0, 130, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1740964252, 0, '', '0');

--
-- Disparadores `players`
--
DELIMITER $$
CREATE TRIGGER `oncreate_players` AFTER INSERT ON `players` FOR EACH ROW BEGIN INSERT INTO `player_skills` (`player_id`, `skillid`, `value`) VALUES (NEW.`id`, 0, 10); INSERT INTO `player_skills` (`player_id`, `skillid`, `value`) VALUES (NEW.`id`, 1, 10); INSERT INTO `player_skills` (`player_id`, `skillid`, `value`) VALUES (NEW.`id`, 2, 10); INSERT INTO `player_skills` (`player_id`, `skillid`, `value`) VALUES (NEW.`id`, 3, 10); INSERT INTO `player_skills` (`player_id`, `skillid`, `value`) VALUES (NEW.`id`, 4, 10); INSERT INTO `player_skills` (`player_id`, `skillid`, `value`) VALUES (NEW.`id`, 5, 10); INSERT INTO `player_skills` (`player_id`, `skillid`, `value`) VALUES (NEW.`id`, 6, 10); END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `ondelete_players` BEFORE DELETE ON `players` FOR EACH ROW BEGIN
    UPDATE `houses` SET `owner` = 0 WHERE `owner` = OLD.`id`;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `players_online`
--

CREATE TABLE `players_online` (
  `player_id` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_autoloot`
--

CREATE TABLE `player_autoloot` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `autoloot_list` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `player_autoloot`
--

INSERT INTO `player_autoloot` (`id`, `player_id`, `autoloot_list`) VALUES
(96, 21, ''),
(97, 20, 0x6408),
(130, 22, ''),
(193, 25, ''),
(194, 26, ''),
(236, 27, ''),
(777, 32, ''),
(865, 24, ''),
(869, 28, ''),
(993, 23, ''),
(1210, 31, ''),
(1243, 35, ''),
(1244, 37, ''),
(1245, 34, ''),
(1246, 30, ''),
(1247, 36, ''),
(1251, 33, ''),
(1310, 3, ''),
(1406, 50, ''),
(1635, 43, ''),
(1662, 52, ''),
(1663, 53, ''),
(1664, 38, ''),
(1667, 40, ''),
(1668, 39, ''),
(1669, 49, ''),
(1671, 51, ''),
(1703, 54, ''),
(1705, 55, ''),
(1852, 57, ''),
(1880, 58, ''),
(1897, 59, ''),
(2030, 56, ''),
(2031, 60, ''),
(2033, 47, ''),
(2053, 62, ''),
(2061, 61, ''),
(2086, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_deaths`
--

CREATE TABLE `player_deaths` (
  `player_id` int(11) NOT NULL,
  `time` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 1,
  `killed_by` varchar(255) NOT NULL,
  `is_player` tinyint(1) NOT NULL DEFAULT 1,
  `mostdamage_by` varchar(100) NOT NULL,
  `mostdamage_is_player` tinyint(1) NOT NULL DEFAULT 0,
  `unjustified` tinyint(1) NOT NULL DEFAULT 0,
  `mostdamage_unjustified` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `player_deaths`
--

INSERT INTO `player_deaths` (`player_id`, `time`, `level`, `killed_by`, `is_player`, `mostdamage_by`, `mostdamage_is_player`, `unjustified`, `mostdamage_unjustified`) VALUES
(3, 1663105915, 1, 'Test', 1, 'Test', 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_depotitems`
--

CREATE TABLE `player_depotitems` (
  `player_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL COMMENT 'any given range eg 0-100 will be reserved for depot lockers and all > 100 will be then normal items inside depots',
  `pid` int(11) NOT NULL DEFAULT 0,
  `itemtype` smallint(5) UNSIGNED NOT NULL,
  `count` smallint(5) NOT NULL DEFAULT 0,
  `attributes` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `player_depotitems`
--

INSERT INTO `player_depotitems` (`player_id`, `sid`, `pid`, `itemtype`, `count`, `attributes`) VALUES
(1, 101, 0, 7391, 1, ''),
(1, 102, 0, 2651, 1, ''),
(1, 103, 1, 1999, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_depotlockeritems`
--

CREATE TABLE `player_depotlockeritems` (
  `player_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL COMMENT 'any given range eg 0-100 will be reserved for depot lockers and all > 100 will be then normal items inside depots',
  `pid` int(11) NOT NULL DEFAULT 0,
  `itemtype` smallint(6) NOT NULL,
  `count` smallint(6) NOT NULL DEFAULT 0,
  `attributes` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_inboxitems`
--

CREATE TABLE `player_inboxitems` (
  `player_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `itemtype` smallint(5) UNSIGNED NOT NULL,
  `count` smallint(5) NOT NULL DEFAULT 0,
  `attributes` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `player_inboxitems`
--

INSERT INTO `player_inboxitems` (`player_id`, `sid`, `pid`, `itemtype`, `count`, `attributes`) VALUES
(1, 101, 0, 2160, 100, 0x0f64),
(1, 102, 0, 2673, 1, 0x0f01),
(1, 103, 0, 2342, 1, ''),
(1, 104, 0, 2457, 1, ''),
(1, 105, 0, 2160, 67, 0x0f43);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_items`
--

CREATE TABLE `player_items` (
  `player_id` int(11) NOT NULL DEFAULT 0,
  `pid` int(11) NOT NULL DEFAULT 0,
  `sid` int(11) NOT NULL DEFAULT 0,
  `itemtype` smallint(5) UNSIGNED NOT NULL,
  `count` smallint(5) NOT NULL DEFAULT 0,
  `attributes` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `player_items`
--

INSERT INTO `player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES
(24, 3, 101, 1987, 1, ''),
(28, 3, 101, 1987, 1, ''),
(23, 3, 101, 1987, 1, ''),
(3, 3, 101, 1987, 1, ''),
(41, 3, 101, 1987, 1, ''),
(42, 3, 101, 1987, 1, ''),
(44, 3, 101, 1987, 1, ''),
(45, 3, 101, 1987, 1, ''),
(46, 3, 101, 1987, 1, ''),
(48, 3, 101, 1987, 1, ''),
(43, 3, 101, 1987, 1, ''),
(47, 3, 101, 1987, 1, ''),
(1, 3, 101, 1987, 1, ''),
(1, 4, 102, 2651, 1, ''),
(1, 10, 103, 2050, 1, ''),
(1, 101, 104, 2382, 1, ''),
(1, 101, 105, 2674, 1, 0x0f01),
(63, 3, 101, 1987, 1, ''),
(63, 5, 102, 2673, 100, 0x0f64),
(63, 6, 103, 2673, 100, 0x0f64),
(63, 10, 104, 2673, 100, 0x0f64),
(63, 101, 105, 2673, 100, 0x0f64),
(63, 101, 106, 2673, 100, 0x0f64),
(63, 101, 107, 2673, 100, 0x0f64),
(63, 101, 108, 2673, 100, 0x0f64),
(63, 101, 109, 2321, 1, ''),
(63, 101, 110, 2050, 1, ''),
(63, 101, 111, 2184, 1, ''),
(63, 101, 112, 2674, 1, 0x0f01),
(113, 1, 101, 2520, 1, ''),
(113, 3, 102, 1987, 1, ''),
(113, 4, 103, 2535, 1, ''),
(113, 6, 104, 2376, 1, ''),
(113, 7, 105, 2536, 1, ''),
(113, 8, 106, 3982, 1, ''),
(113, 10, 107, 1988, 1, ''),
(113, 102, 108, 2166, 1, ''),
(113, 102, 109, 4361, 6, 0x0f06),
(113, 102, 110, 2190, 1, ''),
(113, 102, 111, 2524, 1, ''),
(113, 102, 112, 2507, 1, ''),
(113, 102, 113, 2461, 1, ''),
(130, 2, 101, 2003, 1, ''),
(130, 101, 102, 2315, 1, 0x160100),
(130, 101, 103, 2287, 1, 0x160100),
(130, 101, 104, 2312, 1, 0x160100),
(130, 101, 105, 2269, 1, 0x160100),
(130, 101, 106, 2309, 1, 0x160100),
(130, 101, 107, 2314, 1, 0x160100),
(130, 101, 108, 2290, 1, 0x160100),
(130, 101, 109, 2308, 1, 0x160100),
(130, 101, 110, 2294, 1, 0x160100),
(130, 101, 111, 2276, 1, 0x160100),
(130, 101, 112, 2285, 1, 0x160100),
(130, 101, 113, 2283, 1, 0x160100),
(140, 2, 101, 2003, 1, ''),
(140, 101, 102, 2315, 1, 0x160100),
(140, 101, 103, 2287, 1, 0x160100),
(140, 101, 104, 2312, 1, 0x160100),
(140, 101, 105, 2269, 1, 0x160100),
(140, 101, 106, 2298, 1, 0x160100),
(140, 101, 107, 2314, 1, 0x160100),
(140, 101, 108, 2278, 1, 0x160100),
(140, 101, 109, 2308, 1, 0x160100),
(140, 101, 110, 2281, 1, 0x160100),
(140, 101, 111, 2289, 1, 0x160100),
(140, 101, 112, 2288, 1, 0x160100),
(140, 101, 113, 2311, 1, 0x160100),
(141, 2, 101, 2003, 1, ''),
(141, 101, 102, 2315, 1, 0x160100),
(141, 101, 103, 2287, 1, 0x160100),
(141, 101, 104, 2312, 1, 0x160100),
(141, 101, 105, 2269, 1, 0x160100),
(141, 101, 106, 2309, 1, 0x160100),
(141, 101, 107, 2305, 1, 0x160100),
(141, 101, 108, 2290, 1, 0x160100),
(141, 101, 109, 2308, 1, 0x160100),
(141, 101, 110, 2266, 1, 0x160100),
(141, 101, 111, 2300, 1, 0x160100),
(141, 101, 112, 2307, 1, 0x160100),
(141, 101, 113, 2313, 1, 0x160100),
(142, 2, 101, 2003, 1, ''),
(142, 101, 102, 2315, 1, 0x160100),
(142, 101, 103, 2287, 1, 0x160100),
(142, 101, 104, 2312, 1, 0x160100),
(142, 101, 105, 2269, 1, 0x160100),
(142, 101, 106, 2309, 1, 0x160100),
(142, 101, 107, 2314, 1, 0x160100),
(142, 101, 108, 2278, 1, 0x160100),
(142, 101, 109, 2308, 1, 0x160100),
(142, 101, 110, 2268, 1, 0x160100),
(142, 101, 111, 2310, 1, 0x160100),
(142, 101, 112, 2261, 1, 0x160100),
(142, 101, 113, 2311, 1, 0x160100),
(143, 2, 101, 2003, 1, ''),
(143, 101, 102, 2315, 1, 0x160100),
(143, 101, 103, 2287, 1, 0x160100),
(143, 101, 104, 2312, 1, 0x160100),
(143, 101, 105, 2269, 1, 0x160100),
(143, 101, 106, 2309, 1, 0x160100),
(143, 101, 107, 2314, 1, 0x160100),
(143, 101, 108, 2278, 1, 0x160100),
(143, 101, 109, 2308, 1, 0x160100),
(143, 101, 110, 2294, 1, 0x160100),
(143, 101, 111, 2264, 1, ''),
(143, 101, 112, 2295, 1, 0x160100),
(143, 101, 113, 2293, 1, 0x160100),
(144, 2, 101, 2003, 1, ''),
(146, 2, 101, 2003, 1, ''),
(124, 2, 101, 2003, 1, ''),
(124, 3, 102, 1987, 1, ''),
(124, 101, 103, 2315, 1, 0x160100),
(124, 101, 104, 2287, 1, 0x160100),
(124, 101, 105, 2312, 1, 0x160100),
(124, 101, 106, 2269, 1, 0x160100),
(124, 101, 107, 2309, 1, 0x160100),
(124, 101, 108, 2314, 1, 0x160100),
(124, 101, 109, 2267, 1, 0x160100),
(124, 101, 110, 2308, 1, 0x160100),
(124, 101, 111, 2266, 1, 0x160100),
(124, 101, 112, 2310, 1, 0x160100),
(124, 101, 113, 2277, 1, 0x160100),
(124, 101, 114, 2311, 1, 0x160100),
(145, 2, 101, 2003, 1, ''),
(135, 2, 101, 2003, 1, ''),
(135, 101, 102, 2315, 1, 0x160100),
(135, 101, 103, 2287, 1, 0x160100),
(135, 101, 104, 2312, 1, 0x160100),
(135, 101, 105, 2269, 1, 0x160100),
(135, 101, 106, 2309, 1, 0x160100),
(135, 101, 107, 2314, 1, 0x160100),
(135, 101, 108, 2278, 1, 0x160100),
(135, 101, 109, 2308, 1, 0x160100),
(135, 101, 110, 2270, 1, 0x160100),
(135, 101, 111, 2291, 1, 0x160100),
(135, 101, 112, 2288, 1, 0x160100),
(135, 101, 113, 2296, 1, 0x160100),
(134, 2, 101, 2003, 1, ''),
(134, 101, 102, 2315, 1, 0x160100),
(134, 101, 103, 2287, 1, 0x160100),
(134, 101, 104, 2312, 1, 0x160100),
(134, 101, 105, 2269, 1, 0x160100),
(134, 101, 106, 2309, 1, 0x160100),
(134, 101, 107, 2314, 1, 0x160100),
(134, 101, 108, 2278, 1, 0x160100),
(134, 101, 109, 2308, 1, 0x160100),
(134, 101, 110, 2270, 1, 0x160100),
(134, 101, 111, 2291, 1, 0x160100),
(134, 101, 112, 2288, 1, 0x160100),
(134, 101, 113, 2296, 1, 0x160100),
(139, 2, 101, 2003, 1, ''),
(139, 101, 102, 2315, 1, 0x160100),
(139, 101, 103, 2287, 1, 0x160100),
(139, 101, 104, 2312, 1, 0x160100),
(139, 101, 105, 2269, 1, 0x160100),
(139, 101, 106, 2309, 1, 0x160100),
(139, 101, 107, 2295, 1, 0x160100),
(139, 101, 108, 2278, 1, 0x160100),
(139, 101, 109, 2308, 1, 0x160100),
(139, 101, 110, 2268, 1, 0x160100),
(139, 101, 111, 2310, 1, 0x160100),
(139, 101, 112, 2261, 1, 0x160100),
(139, 101, 113, 2311, 1, 0x160100),
(138, 2, 101, 2003, 1, ''),
(138, 101, 102, 2315, 1, 0x160100),
(138, 101, 103, 2287, 1, 0x160100),
(138, 101, 104, 2312, 1, 0x160100),
(138, 101, 105, 2269, 1, 0x160100),
(138, 101, 106, 2298, 1, 0x160100),
(138, 101, 107, 2314, 1, 0x160100),
(138, 101, 108, 2278, 1, 0x160100),
(138, 101, 109, 2306, 1, 0x160100),
(138, 101, 110, 2281, 1, 0x160100),
(138, 101, 111, 2289, 1, 0x160100),
(138, 101, 112, 2282, 1, 0x160100),
(138, 101, 113, 2311, 1, 0x160100),
(136, 2, 101, 2003, 1, ''),
(136, 101, 102, 2315, 1, 0x160100),
(136, 101, 103, 2287, 1, 0x160100),
(136, 101, 104, 2312, 1, 0x160100),
(136, 101, 105, 2269, 1, 0x160100),
(136, 101, 106, 2309, 1, 0x160100),
(136, 101, 107, 2295, 1, 0x160100),
(136, 101, 108, 2286, 1, 0x160100),
(136, 101, 109, 2308, 1, 0x160100),
(136, 101, 110, 2294, 1, 0x160100),
(136, 101, 111, 2291, 1, 0x160100),
(136, 101, 112, 2301, 1, 0x160100),
(136, 101, 113, 2299, 1, 0x160100),
(133, 2, 101, 2003, 1, ''),
(133, 101, 102, 2315, 1, 0x160100),
(133, 101, 103, 2287, 1, 0x160100),
(133, 101, 104, 2312, 1, 0x160100),
(133, 101, 105, 2269, 1, 0x160100),
(133, 101, 106, 2309, 1, 0x160100),
(133, 101, 107, 2314, 1, 0x160100),
(133, 101, 108, 2278, 1, 0x160100),
(133, 101, 109, 2308, 1, 0x160100),
(133, 101, 110, 2294, 1, 0x160100),
(133, 101, 111, 2303, 1, 0x160100),
(133, 101, 112, 2285, 1, 0x160100),
(133, 101, 113, 2293, 1, 0x160100),
(132, 2, 101, 2003, 1, ''),
(132, 101, 102, 2315, 1, 0x160100),
(132, 101, 103, 2287, 1, 0x160100),
(132, 101, 104, 2312, 1, 0x160100),
(132, 101, 105, 2269, 1, 0x160100),
(132, 101, 106, 2309, 1, 0x160100),
(132, 101, 107, 2295, 1, 0x160100),
(132, 101, 108, 2278, 1, 0x160100),
(132, 101, 109, 2308, 1, 0x160100),
(132, 101, 110, 2294, 1, 0x160100),
(132, 101, 111, 2303, 1, 0x160100),
(132, 101, 112, 2285, 1, 0x160100),
(132, 101, 113, 2293, 1, 0x160100),
(131, 2, 101, 2003, 1, ''),
(131, 101, 102, 2315, 1, 0x160100),
(131, 101, 103, 2287, 1, 0x160100),
(131, 101, 104, 2312, 1, 0x160100),
(131, 101, 105, 2269, 1, 0x160100),
(131, 101, 106, 2309, 1, 0x160100),
(131, 101, 107, 2314, 1, 0x160100),
(131, 101, 108, 2290, 1, 0x160100),
(131, 101, 109, 2308, 1, 0x160100),
(131, 101, 110, 2294, 1, 0x160100),
(131, 101, 111, 2276, 1, 0x160100),
(131, 101, 112, 2285, 1, 0x160100),
(131, 101, 113, 2283, 1, 0x160100),
(137, 2, 101, 2003, 1, ''),
(137, 101, 102, 2315, 1, 0x160100),
(137, 101, 103, 2287, 1, 0x160100),
(137, 101, 104, 2312, 1, 0x160100),
(137, 101, 105, 2269, 1, 0x160100),
(137, 101, 106, 2309, 1, 0x160100),
(137, 101, 107, 2314, 1, 0x160100),
(137, 101, 108, 2290, 1, 0x160100),
(137, 101, 109, 2308, 1, 0x160100),
(137, 101, 110, 2294, 1, 0x160100),
(137, 101, 111, 2310, 1, 0x160100),
(137, 101, 112, 2288, 1, 0x160100),
(137, 101, 113, 2279, 1, 0x160100),
(128, 2, 101, 2003, 1, ''),
(128, 3, 102, 1987, 1, ''),
(128, 101, 103, 2315, 1, 0x160100),
(128, 101, 104, 2287, 1, 0x160100),
(128, 101, 105, 2312, 1, 0x160100),
(128, 101, 106, 2269, 1, 0x160100),
(128, 101, 107, 2309, 1, 0x160100),
(128, 101, 108, 2295, 1, 0x160100),
(128, 101, 109, 2267, 1, 0x160100),
(128, 101, 110, 2308, 1, 0x160100),
(128, 101, 111, 2266, 1, 0x160100),
(128, 101, 112, 2310, 1, 0x160100),
(128, 101, 113, 2272, 1, 0x160100),
(128, 101, 114, 2296, 1, 0x160100),
(127, 2, 101, 2003, 1, ''),
(127, 3, 102, 1987, 1, ''),
(127, 101, 103, 2315, 1, 0x160100),
(127, 101, 104, 2287, 1, 0x160100),
(127, 101, 105, 2312, 1, 0x160100),
(127, 101, 106, 2269, 1, 0x160100),
(127, 101, 107, 2309, 1, 0x160100),
(127, 101, 108, 2314, 1, 0x160100),
(127, 101, 109, 2290, 1, 0x160100),
(127, 101, 110, 2308, 1, 0x160100),
(127, 101, 111, 2266, 1, 0x160100),
(127, 101, 112, 2276, 1, 0x160100),
(127, 101, 113, 2288, 1, 0x160100),
(127, 101, 114, 2271, 1, 0x160100),
(125, 2, 101, 2003, 1, ''),
(125, 3, 102, 1987, 1, ''),
(125, 7, 103, 2504, 1, ''),
(125, 101, 104, 2315, 1, 0x160100),
(125, 101, 105, 2287, 1, 0x160100),
(125, 101, 106, 2312, 1, 0x160100),
(125, 101, 107, 2269, 1, 0x160100),
(125, 101, 108, 2309, 1, 0x160100),
(125, 101, 109, 2314, 1, 0x160100),
(125, 101, 110, 2267, 1, 0x160100),
(125, 101, 111, 2308, 1, 0x160100),
(125, 101, 112, 2268, 1, 0x160100),
(125, 101, 113, 2310, 1, 0x160100),
(125, 101, 114, 2272, 1, 0x160100),
(125, 101, 115, 2311, 1, 0x160100),
(121, 2, 101, 2003, 1, ''),
(121, 3, 102, 1987, 1, ''),
(121, 101, 103, 2315, 1, 0x160100),
(121, 101, 104, 2287, 1, 0x160100),
(121, 101, 105, 2312, 1, 0x160100),
(121, 101, 106, 2269, 1, 0x160100),
(121, 101, 107, 2309, 1, 0x160100),
(121, 101, 108, 2305, 1, 0x160100),
(121, 101, 109, 2286, 1, 0x160100),
(121, 101, 110, 2308, 1, 0x160100),
(121, 101, 111, 2304, 1, 0x160100),
(121, 101, 112, 2300, 1, 0x160100),
(121, 101, 113, 2307, 1, 0x160100),
(121, 101, 114, 2313, 1, 0x160100),
(126, 2, 101, 2003, 1, ''),
(126, 3, 102, 1987, 1, ''),
(126, 101, 103, 2315, 1, 0x160100),
(126, 101, 104, 2287, 1, 0x160100),
(126, 101, 105, 2312, 1, 0x160100),
(126, 101, 106, 2269, 1, 0x160100),
(126, 101, 107, 2309, 1, 0x160100),
(126, 101, 108, 2314, 1, 0x160100),
(126, 101, 109, 2267, 1, 0x160100),
(126, 101, 110, 2308, 1, 0x160100),
(126, 101, 111, 2268, 1, 0x160100),
(126, 101, 112, 2310, 1, 0x160100),
(126, 101, 113, 2272, 1, 0x160100),
(126, 101, 114, 2311, 1, 0x160100),
(129, 2, 101, 2003, 1, ''),
(129, 3, 102, 1987, 1, ''),
(129, 101, 103, 2315, 1, 0x160100),
(129, 101, 104, 2287, 1, 0x160100),
(129, 101, 105, 2312, 1, 0x160100),
(129, 101, 106, 2269, 1, 0x160100),
(129, 101, 107, 2280, 1, 0x160100),
(129, 101, 108, 2295, 1, 0x160100),
(129, 101, 109, 2267, 1, 0x160100),
(129, 101, 110, 2263, 1, ''),
(129, 101, 111, 2294, 1, 0x160100),
(129, 101, 112, 2276, 1, 0x160100),
(129, 101, 113, 2285, 1, 0x160100),
(129, 101, 114, 2283, 1, 0x160100),
(123, 1, 101, 2461, 1, ''),
(123, 2, 102, 2003, 1, ''),
(123, 3, 103, 1987, 1, ''),
(123, 4, 104, 2535, 1, ''),
(123, 5, 105, 1988, 1, ''),
(123, 6, 106, 2507, 1, ''),
(123, 8, 107, 2524, 1, ''),
(123, 10, 108, 2376, 1, ''),
(69, 6, 101, 4854, 1, ''),
(69, 8, 102, 8544, 1, ''),
(122, 1, 101, 7691, 1, ''),
(122, 2, 102, 2003, 1, ''),
(122, 3, 103, 1987, 1, ''),
(122, 4, 104, 7692, 1, ''),
(122, 5, 105, 2673, 92, 0x0f5c),
(122, 6, 106, 8580, 1, ''),
(122, 7, 107, 7693, 1, ''),
(122, 8, 108, 7694, 1, ''),
(122, 9, 109, 8359, 1, ''),
(122, 10, 110, 1990, 1, ''),
(122, 102, 111, 2315, 1, 0x160100),
(122, 102, 112, 2287, 1, 0x160100),
(122, 102, 113, 2312, 1, 0x160100),
(122, 102, 114, 2269, 1, 0x160100),
(122, 102, 115, 2309, 1, 0x160100),
(122, 102, 116, 2295, 1, 0x160100),
(122, 102, 117, 2267, 1, 0x160100),
(122, 102, 118, 2308, 1, 0x160100),
(122, 102, 119, 2268, 1, 0x160100),
(122, 102, 120, 2310, 1, 0x160100),
(122, 102, 121, 2297, 1, 0x160100),
(122, 102, 122, 2311, 1, 0x160100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_namelocks`
--

CREATE TABLE `player_namelocks` (
  `player_id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `namelocked_at` bigint(20) NOT NULL,
  `namelocked_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_spells`
--

CREATE TABLE `player_spells` (
  `player_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_storage`
--

CREATE TABLE `player_storage` (
  `player_id` int(11) NOT NULL DEFAULT 0,
  `key` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `value` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `player_storage`
--

INSERT INTO `player_storage` (`player_id`, `key`, `value`) VALUES
(3, 8000, 1),
(3, 9991, 0),
(3, 30018, 1),
(23, 30018, 1),
(24, 30018, 1),
(28, 30018, 1),
(43, 30018, 1),
(47, 30018, 1),
(63, 7114, 1),
(69, 0, 1729180677),
(69, 104, 1),
(69, 106, 1),
(69, 111, 0),
(69, 1060, 1723592699),
(69, 4922, 0),
(69, 4923, 0),
(69, 4924, 0),
(69, 4925, 0),
(69, 4926, 0),
(69, 4927, 0),
(69, 4928, 0),
(69, 4929, 0),
(69, 4930, 0),
(69, 4931, 0),
(69, 4932, 0),
(69, 4933, 0),
(69, 4934, 0),
(69, 4935, 0),
(69, 4936, 0),
(69, 4937, 0),
(69, 4938, 0),
(69, 4939, 0),
(69, 4940, 0),
(69, 4941, 0),
(69, 4942, 0),
(69, 4943, 0),
(69, 4944, 0),
(69, 4945, 0),
(69, 4946, 0),
(69, 4947, 0),
(69, 4948, 0),
(69, 4949, 0),
(69, 4950, 0),
(69, 4951, 0),
(69, 4952, 0),
(69, 4953, 0),
(69, 4954, 0),
(69, 4955, 0),
(69, 4956, 0),
(69, 4957, 0),
(69, 4958, 0),
(69, 4959, 0),
(69, 4960, 0),
(69, 4961, 0),
(69, 6000, 0),
(69, 6001, 0),
(69, 6002, 0),
(69, 6003, 0),
(69, 6004, 0),
(69, 6005, 0),
(69, 6315, 1726346202),
(69, 7101, 1),
(69, 7102, 1),
(69, 7103, 1),
(69, 7104, 1),
(69, 7187, 1),
(69, 8000, 60),
(69, 12345, 1726782339),
(69, 12411, 1723686953),
(69, 12414, 1723686775),
(69, 12431, 1723687241),
(69, 12434, 1723685471),
(69, 20012, 1726796914),
(69, 20067, 5),
(69, 20090, 4),
(69, 20197, 10),
(69, 34234, 4),
(69, 34235, 4),
(69, 35320, 1),
(69, 55550, 1723684313),
(69, 93929, 1),
(69, 93930, 0),
(69, 93931, 0),
(69, 95613, 1726782643),
(69, 176201, 1),
(69, 176203, 1),
(69, 176204, 1),
(69, 176205, 1),
(69, 176207, 1),
(69, 176208, 1),
(69, 176601, 8),
(69, 176602, 5),
(69, 176603, 0),
(69, 176604, 0),
(69, 176605, 0),
(69, 176606, 1726929920),
(69, 176607, 0),
(69, 10001001, 71237635),
(69, 10001002, 71303171),
(113, 5000, 6),
(113, 5001, 1),
(113, 5002, 1),
(113, 5005, 1),
(113, 5010, 1),
(113, 6315, 1726346797),
(113, 35320, 1),
(121, 8894, 1),
(121, 8895, 5),
(121, 8896, 2),
(121, 8897, 2),
(121, 8898, 4),
(121, 8899, 3),
(121, 8900, 3),
(121, 8901, 3),
(121, 8902, 3),
(121, 9998, 1),
(121, 10000, 1),
(121, 10001, 6571),
(121, 10002, 1),
(121, 13103, 1741196399),
(121, 30004, 2666),
(121, 55550, 1741129495),
(121, 93930, 50),
(121, 93931, 0),
(121, 344122, 1),
(122, 6315, 1744053604),
(122, 8000, 1),
(122, 8894, 1),
(122, 8895, 3),
(122, 8896, 2),
(122, 8897, 2),
(122, 8898, 2),
(122, 8899, 2),
(122, 8900, 2),
(122, 8901, 2),
(122, 8902, 2),
(122, 9998, 1),
(122, 10000, 1),
(122, 55550, 1746371552),
(122, 93930, 0),
(122, 93931, 0),
(122, 344122, 1),
(123, 35320, 1),
(123, 344122, 1),
(124, 344122, 1),
(125, 344122, 1),
(126, 8000, 1),
(126, 344122, 1),
(127, 344122, 1),
(128, 344122, 1),
(129, 344122, 1),
(130, 344122, 1),
(131, 344122, 1),
(132, 344122, 1),
(133, 344122, 1),
(134, 344122, 1),
(135, 344122, 1),
(136, 344122, 1),
(137, 344122, 1),
(138, 344122, 1),
(139, 344122, 1),
(140, 344122, 1),
(141, 344122, 1),
(142, 344122, 1),
(143, 344122, 1),
(144, 344122, 1),
(145, 344122, 1),
(146, 344122, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_storeinboxitems`
--

CREATE TABLE `player_storeinboxitems` (
  `player_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `itemtype` smallint(5) UNSIGNED NOT NULL,
  `count` smallint(5) NOT NULL DEFAULT 0,
  `attributes` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_config`
--

CREATE TABLE `server_config` (
  `config` varchar(50) NOT NULL,
  `value` varchar(256) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `server_config`
--

INSERT INTO `server_config` (`config`, `value`) VALUES
('db_version', '36'),
('encryption', '2'),
('motd_hash', '574ed007a084ff490856e252bd44b66ce2d254a2'),
('motd_num', '8'),
('players_record', '7'),
('vahash_key', '8AU5-468X-7NYE-BU8J');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shop_history`
--

CREATE TABLE `shop_history` (
  `id` int(11) NOT NULL,
  `account` int(11) NOT NULL,
  `player` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `target` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `shop_history`
--

INSERT INTO `shop_history` (`id`, `account`, `player`, `date`, `title`, `price`, `count`, `target`) VALUES
(1, 10, 69, '2024-07-23 16:31:56', 'Janemba Sword', 100, 1, NULL),
(2, 10, 69, '2024-07-23 16:37:03', 'Gold', 500, 100, NULL),
(3, 10, 69, '2024-07-23 16:37:19', 'Senzu Bean', 500, 100, NULL),
(4, 10, 69, '2024-07-23 16:37:30', 'Senzu Bean', 500, 100, NULL),
(5, 10, 69, '2024-07-23 16:38:32', 'Senzu Bean', 500, 100, NULL),
(6, 10, 69, '2024-07-23 17:09:39', 'Enchanted Senzu', 1000, 100, NULL),
(7, 10, 69, '2024-07-23 17:27:22', 'Dragon Ball Backpack', 500, 1, NULL),
(8, 10, 69, '2024-07-23 17:28:10', 'Dream Warrior Outfit', 350, 0, NULL),
(9, 10, 69, '2024-07-23 17:53:56', 'Event loss box', 1500, 1, NULL),
(10, 10, 69, '2024-07-23 18:02:22', 'Cabba Box', 4000, 1, NULL),
(11, 10, 69, '2024-07-23 18:07:04', 'Distance Box', 4000, 1, NULL),
(12, 10, 69, '2024-07-23 18:09:18', 'Saiyan Ring', 1500, 1, NULL),
(13, 10, 69, '2024-09-14 09:15:48', 'Dragon Ball Backpack', 500, 1, NULL),
(14, 10, 69, '2024-09-14 09:36:25', 'Super Weapon Enchant Item', 500, 1, NULL),
(15, 10, 69, '2024-09-14 10:45:11', 'Dragon Ball Backpack', 500, 1, NULL),
(16, 10, 69, '2024-09-14 10:48:21', 'Distance Box', 4000, 1, NULL),
(17, 10, 69, '2024-09-14 10:48:47', 'God Box', 4000, 1, NULL),
(20, 10, 69, '2024-09-25 19:34:59', 'Cabba Box', 4000, 1, NULL),
(21, 10, 69, '2024-09-25 19:35:12', 'God Box', 4000, 1, NULL),
(22, 10, 69, '2024-10-15 19:18:26', 'Saiyan Ring', 1500, 1, NULL),
(23, 10, 122, '2025-04-07 13:48:49', 'Senzu Bean', 500, 100, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tile_store`
--

CREATE TABLE `tile_store` (
  `house_id` int(11) NOT NULL,
  `data` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `tile_store`
--

INSERT INTO `tile_store` (`house_id`, `data`) VALUES
(73, 0x4c00b6000701000000e50400),
(74, 0x4600b6000701000000e50400),
(75, 0x4e00ae000701000000e20400),
(76, 0x4e00a9000701000000e20400),
(77, 0x5d00a4000701000000e20400),
(78, 0x5d00a0000701000000e20400);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `towns`
--

CREATE TABLE `towns` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `posx` int(11) NOT NULL DEFAULT 0,
  `posy` int(11) NOT NULL DEFAULT 0,
  `posz` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `towns`
--

INSERT INTO `towns` (`id`, `name`, `posx`, `posy`, `posz`) VALUES
(1, 'DBKO', 306, 46, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_polls`
--

CREATE TABLE `z_polls` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `end` int(11) NOT NULL DEFAULT 0,
  `start` int(11) NOT NULL DEFAULT 0,
  `answers` int(11) NOT NULL DEFAULT 0,
  `votes_all` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_polls_answers`
--

CREATE TABLE `z_polls_answers` (
  `poll_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `votes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `account_bans`
--
ALTER TABLE `account_bans`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `banned_by` (`banned_by`);

--
-- Indices de la tabla `account_ban_history`
--
ALTER TABLE `account_ban_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `banned_by` (`banned_by`);

--
-- Indices de la tabla `account_viplist`
--
ALTER TABLE `account_viplist`
  ADD UNIQUE KEY `account_player_index` (`account_id`,`player_id`),
  ADD KEY `player_id` (`player_id`);

--
-- Indices de la tabla `guilds`
--
ALTER TABLE `guilds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `ownerid` (`ownerid`);

--
-- Indices de la tabla `guildwar_kills`
--
ALTER TABLE `guildwar_kills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warid` (`warid`);

--
-- Indices de la tabla `guild_invites`
--
ALTER TABLE `guild_invites`
  ADD PRIMARY KEY (`player_id`,`guild_id`),
  ADD KEY `guild_id` (`guild_id`);

--
-- Indices de la tabla `guild_membership`
--
ALTER TABLE `guild_membership`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `guild_id` (`guild_id`),
  ADD KEY `rank_id` (`rank_id`);

--
-- Indices de la tabla `guild_ranks`
--
ALTER TABLE `guild_ranks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guild_id` (`guild_id`);

--
-- Indices de la tabla `guild_wars`
--
ALTER TABLE `guild_wars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guild1` (`guild1`),
  ADD KEY `guild2` (`guild2`);

--
-- Indices de la tabla `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner` (`owner`),
  ADD KEY `town_id` (`town_id`);

--
-- Indices de la tabla `house_lists`
--
ALTER TABLE `house_lists`
  ADD KEY `house_id` (`house_id`);

--
-- Indices de la tabla `ip_bans`
--
ALTER TABLE `ip_bans`
  ADD PRIMARY KEY (`ip`),
  ADD KEY `banned_by` (`banned_by`);

--
-- Indices de la tabla `list_of_items`
--
ALTER TABLE `list_of_items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `market_history`
--
ALTER TABLE `market_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_id` (`player_id`,`sale`);

--
-- Indices de la tabla `market_offers`
--
ALTER TABLE `market_offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale` (`sale`,`itemtype`),
  ADD KEY `created` (`created`),
  ADD KEY `player_id` (`player_id`);

--
-- Indices de la tabla `myaac_account_actions`
--
ALTER TABLE `myaac_account_actions`
  ADD KEY `account_id` (`account_id`);

--
-- Indices de la tabla `myaac_admin_menu`
--
ALTER TABLE `myaac_admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myaac_bugtracker`
--
ALTER TABLE `myaac_bugtracker`
  ADD PRIMARY KEY (`uid`);

--
-- Indices de la tabla `myaac_changelog`
--
ALTER TABLE `myaac_changelog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myaac_config`
--
ALTER TABLE `myaac_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `myaac_faq`
--
ALTER TABLE `myaac_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myaac_forum`
--
ALTER TABLE `myaac_forum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section` (`section`);

--
-- Indices de la tabla `myaac_forum_boards`
--
ALTER TABLE `myaac_forum_boards`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myaac_gallery`
--
ALTER TABLE `myaac_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myaac_menu`
--
ALTER TABLE `myaac_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myaac_monsters`
--
ALTER TABLE `myaac_monsters`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myaac_news`
--
ALTER TABLE `myaac_news`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myaac_news_categories`
--
ALTER TABLE `myaac_news_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myaac_notepad`
--
ALTER TABLE `myaac_notepad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myaac_pages`
--
ALTER TABLE `myaac_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `myaac_spells`
--
ALTER TABLE `myaac_spells`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `myaac_videos`
--
ALTER TABLE `myaac_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myaac_visitors`
--
ALTER TABLE `myaac_visitors`
  ADD UNIQUE KEY `ip` (`ip`);

--
-- Indices de la tabla `myaac_weapons`
--
ALTER TABLE `myaac_weapons`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `vocation` (`vocation`);

--
-- Indices de la tabla `players_online`
--
ALTER TABLE `players_online`
  ADD PRIMARY KEY (`player_id`);

--
-- Indices de la tabla `player_autoloot`
--
ALTER TABLE `player_autoloot`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `player_deaths`
--
ALTER TABLE `player_deaths`
  ADD KEY `player_id` (`player_id`),
  ADD KEY `killed_by` (`killed_by`),
  ADD KEY `mostdamage_by` (`mostdamage_by`);

--
-- Indices de la tabla `player_depotitems`
--
ALTER TABLE `player_depotitems`
  ADD UNIQUE KEY `player_id_2` (`player_id`,`sid`);

--
-- Indices de la tabla `player_depotlockeritems`
--
ALTER TABLE `player_depotlockeritems`
  ADD UNIQUE KEY `player_id_2` (`player_id`,`sid`);

--
-- Indices de la tabla `player_inboxitems`
--
ALTER TABLE `player_inboxitems`
  ADD UNIQUE KEY `player_id_2` (`player_id`,`sid`);

--
-- Indices de la tabla `player_items`
--
ALTER TABLE `player_items`
  ADD KEY `player_id` (`player_id`),
  ADD KEY `sid` (`sid`);

--
-- Indices de la tabla `player_namelocks`
--
ALTER TABLE `player_namelocks`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `namelocked_by` (`namelocked_by`);

--
-- Indices de la tabla `player_spells`
--
ALTER TABLE `player_spells`
  ADD KEY `player_id` (`player_id`);

--
-- Indices de la tabla `player_storage`
--
ALTER TABLE `player_storage`
  ADD PRIMARY KEY (`player_id`,`key`);

--
-- Indices de la tabla `player_storeinboxitems`
--
ALTER TABLE `player_storeinboxitems`
  ADD UNIQUE KEY `player_id_2` (`player_id`,`sid`);

--
-- Indices de la tabla `server_config`
--
ALTER TABLE `server_config`
  ADD PRIMARY KEY (`config`);

--
-- Indices de la tabla `shop_history`
--
ALTER TABLE `shop_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account` (`account`),
  ADD KEY `player` (`player`);

--
-- Indices de la tabla `tile_store`
--
ALTER TABLE `tile_store`
  ADD KEY `house_id` (`house_id`);

--
-- Indices de la tabla `towns`
--
ALTER TABLE `towns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `z_polls`
--
ALTER TABLE `z_polls`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `account_ban_history`
--
ALTER TABLE `account_ban_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `guilds`
--
ALTER TABLE `guilds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `guildwar_kills`
--
ALTER TABLE `guildwar_kills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `guild_ranks`
--
ALTER TABLE `guild_ranks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `guild_wars`
--
ALTER TABLE `guild_wars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT de la tabla `market_history`
--
ALTER TABLE `market_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `market_offers`
--
ALTER TABLE `market_offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myaac_admin_menu`
--
ALTER TABLE `myaac_admin_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myaac_bugtracker`
--
ALTER TABLE `myaac_bugtracker`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myaac_changelog`
--
ALTER TABLE `myaac_changelog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `myaac_config`
--
ALTER TABLE `myaac_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `myaac_faq`
--
ALTER TABLE `myaac_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myaac_forum`
--
ALTER TABLE `myaac_forum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myaac_forum_boards`
--
ALTER TABLE `myaac_forum_boards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `myaac_gallery`
--
ALTER TABLE `myaac_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `myaac_menu`
--
ALTER TABLE `myaac_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT de la tabla `myaac_monsters`
--
ALTER TABLE `myaac_monsters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=689;

--
-- AUTO_INCREMENT de la tabla `myaac_news`
--
ALTER TABLE `myaac_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `myaac_news_categories`
--
ALTER TABLE `myaac_news_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `myaac_notepad`
--
ALTER TABLE `myaac_notepad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myaac_pages`
--
ALTER TABLE `myaac_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `myaac_spells`
--
ALTER TABLE `myaac_spells`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT de la tabla `myaac_videos`
--
ALTER TABLE `myaac_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT de la tabla `player_autoloot`
--
ALTER TABLE `player_autoloot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2087;

--
-- AUTO_INCREMENT de la tabla `shop_history`
--
ALTER TABLE `shop_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `towns`
--
ALTER TABLE `towns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `z_polls`
--
ALTER TABLE `z_polls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `account_bans`
--
ALTER TABLE `account_bans`
  ADD CONSTRAINT `account_bans_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_bans_ibfk_2` FOREIGN KEY (`banned_by`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `account_ban_history`
--
ALTER TABLE `account_ban_history`
  ADD CONSTRAINT `account_ban_history_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_ban_history_ibfk_2` FOREIGN KEY (`banned_by`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `account_viplist`
--
ALTER TABLE `account_viplist`
  ADD CONSTRAINT `account_viplist_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `account_viplist_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `guilds`
--
ALTER TABLE `guilds`
  ADD CONSTRAINT `guilds_ibfk_1` FOREIGN KEY (`ownerid`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `guildwar_kills`
--
ALTER TABLE `guildwar_kills`
  ADD CONSTRAINT `guildwar_kills_ibfk_1` FOREIGN KEY (`warid`) REFERENCES `guild_wars` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `guild_invites`
--
ALTER TABLE `guild_invites`
  ADD CONSTRAINT `guild_invites_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `guild_invites_ibfk_2` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `guild_membership`
--
ALTER TABLE `guild_membership`
  ADD CONSTRAINT `guild_membership_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `guild_membership_ibfk_2` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `guild_membership_ibfk_3` FOREIGN KEY (`rank_id`) REFERENCES `guild_ranks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `guild_ranks`
--
ALTER TABLE `guild_ranks`
  ADD CONSTRAINT `guild_ranks_ibfk_1` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `house_lists`
--
ALTER TABLE `house_lists`
  ADD CONSTRAINT `house_lists_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ip_bans`
--
ALTER TABLE `ip_bans`
  ADD CONSTRAINT `ip_bans_ibfk_1` FOREIGN KEY (`banned_by`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `market_history`
--
ALTER TABLE `market_history`
  ADD CONSTRAINT `market_history_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `market_offers`
--
ALTER TABLE `market_offers`
  ADD CONSTRAINT `market_offers_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `player_deaths`
--
ALTER TABLE `player_deaths`
  ADD CONSTRAINT `player_deaths_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `player_depotitems`
--
ALTER TABLE `player_depotitems`
  ADD CONSTRAINT `player_depotitems_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `player_depotlockeritems`
--
ALTER TABLE `player_depotlockeritems`
  ADD CONSTRAINT `player_depotlockeritems_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `player_inboxitems`
--
ALTER TABLE `player_inboxitems`
  ADD CONSTRAINT `player_inboxitems_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `player_items`
--
ALTER TABLE `player_items`
  ADD CONSTRAINT `player_items_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `player_namelocks`
--
ALTER TABLE `player_namelocks`
  ADD CONSTRAINT `player_namelocks_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `player_namelocks_ibfk_2` FOREIGN KEY (`namelocked_by`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `player_spells`
--
ALTER TABLE `player_spells`
  ADD CONSTRAINT `player_spells_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `player_storage`
--
ALTER TABLE `player_storage`
  ADD CONSTRAINT `player_storage_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `player_storeinboxitems`
--
ALTER TABLE `player_storeinboxitems`
  ADD CONSTRAINT `player_storeinboxitems_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `shop_history`
--
ALTER TABLE `shop_history`
  ADD CONSTRAINT `shop_history_ibfk_1` FOREIGN KEY (`account`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shop_history_ibfk_2` FOREIGN KEY (`player`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `tile_store`
--
ALTER TABLE `tile_store`
  ADD CONSTRAINT `tile_store_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
