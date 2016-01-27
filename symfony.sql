-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mer 27 Janvier 2016 à 08:57
-- Version du serveur: 5.5.46-0ubuntu0.14.04.2
-- Version de PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `symfony`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_880E0D76F85E0677` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=480 ;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`id`, `username`) VALUES
(477, 'aa'),
(478, 'oo'),
(479, 'uu');

-- --------------------------------------------------------

--
-- Structure de la table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `idCategorie` int(11) DEFAULT NULL,
  `idSousCategorie` int(11) DEFAULT NULL,
  `idThreads` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `answer`
--

INSERT INTO `answer` (`id`, `author`, `title`, `content`, `date`, `idCategorie`, `idSousCategorie`, `idThreads`) VALUES
(1, 'aa', NULL, 'okok', '2015-10-27 17:44:21', NULL, NULL, 1),
(2, 'ee', NULL, 'classe', '2015-10-30 22:39:18', NULL, NULL, 7);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`id`, `author`, `title`, `date`) VALUES
(10, '&&', 'test', '2015-10-23 01:07:20'),
(11, '&&', 'test2 secu', '2015-10-23 01:07:44'),
(12, '&&', 'secu foireuse', '2015-10-23 01:10:50');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE IF NOT EXISTS `commentaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `idCategorie` int(11) DEFAULT NULL,
  `idSousCategorie` int(11) DEFAULT NULL,
  `idThreads` int(11) DEFAULT NULL,
  `idAnswer` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `commentaire`
--

INSERT INTO `commentaire` (`id`, `author`, `title`, `content`, `date`, `idCategorie`, `idSousCategorie`, `idThreads`, `idAnswer`) VALUES
(2, 'ee', NULL, 'ok', '2015-10-30 22:42:13', NULL, NULL, 7, 2);

-- --------------------------------------------------------

--
-- Structure de la table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=934 ;

--
-- Contenu de la table `log`
--

INSERT INTO `log` (`id`, `username`, `url`, `action`, `date`, `role`) VALUES
(357, 'wx', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-10-28 16:47:50', NULL),
(358, 'wx', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 16:47:50', NULL),
(359, 'wx', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 16:47:58', NULL),
(360, 'aa', NULL, 'visited', '2015-10-28 16:48:07', NULL),
(361, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 16:53:06', NULL),
(362, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 16:53:10', NULL),
(363, 'mm', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 16:53:11', NULL),
(364, 'mm', NULL, 'visited', '2015-10-28 16:53:25', NULL),
(365, 'mm', NULL, 'visited', '2015-10-28 16:53:57', NULL),
(366, 'mm', NULL, 'visited', '2015-10-28 16:54:20', NULL),
(367, 'mm', NULL, 'visited', '2015-10-28 16:54:35', NULL),
(368, 'aa', NULL, 'visited', '2015-10-28 16:54:36', NULL),
(369, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 16:54:47', NULL),
(370, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 16:54:53', NULL),
(371, 'lool', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 16:54:53', NULL),
(372, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 16:55:16', NULL),
(373, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/profile?id=53', 'visited', '2015-10-28 16:55:22', NULL),
(374, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 16:55:31', NULL),
(375, 'nn', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 16:55:31', NULL),
(376, 'anon.', NULL, 'visited', '2015-10-28 16:55:45', NULL),
(377, 'anon.', NULL, 'visited', '2015-10-28 16:55:54', NULL),
(378, 'anon.', NULL, 'visited', '2015-10-28 16:56:02', NULL),
(379, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 16:56:08', NULL),
(380, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/profile?id=40', 'visited', '2015-10-28 16:56:16', NULL),
(381, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 16:56:21', NULL),
(382, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 16:56:22', NULL),
(383, 'anon.', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 16:56:34', NULL),
(384, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 16:56:51', NULL),
(385, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 16:57:00', NULL),
(386, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/profile?id=46', 'visited', '2015-10-28 16:57:12', NULL),
(387, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 16:57:18', NULL),
(388, 'xxh', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 16:57:18', NULL),
(389, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 16:57:30', NULL),
(390, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 16:57:30', NULL),
(391, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 16:57:30', NULL),
(392, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 16:57:42', NULL),
(393, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/profile?id=45', 'visited', '2015-10-28 16:57:49', NULL),
(394, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/tickets/', 'visited', '2015-10-28 16:57:52', NULL),
(395, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 16:57:56', NULL),
(396, 'mm', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 16:57:56', NULL),
(397, 'mm', 'http://localhost/Symfony/web/app_dev.php/fr/logout', 'logout', '2015-10-28 16:58:05', NULL),
(398, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/profile?id=36', 'visited', '2015-10-28 16:58:06', NULL),
(399, 'aa', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-10-28 16:58:12', NULL),
(400, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 16:58:12', NULL),
(401, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 16:58:15', NULL),
(402, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/tickets/admin/spool', 'visited', '2015-10-28 16:58:17', NULL),
(403, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 16:58:22', NULL),
(404, 'mm', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 16:59:38', NULL),
(405, 'mm', NULL, 'visited', '2015-10-28 16:59:54', NULL),
(406, 'aa', NULL, 'visited', '2015-10-28 16:59:54', NULL),
(407, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/logout', 'logout', '2015-10-28 16:59:59', NULL),
(408, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 16:59:59', NULL),
(409, 'aa', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-10-28 17:00:06', NULL),
(410, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 17:00:06', NULL),
(411, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 17:00:11', NULL),
(412, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin/log', 'visited', '2015-10-28 17:00:41', NULL),
(413, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:00:47', NULL),
(414, 'ok', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:00:48', NULL),
(415, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 17:03:31', NULL),
(416, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/profile?id=38', 'visited', '2015-10-28 17:04:25', NULL),
(417, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:04:27', NULL),
(418, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/tickets/admin/spool', 'visited', '2015-10-28 17:04:29', NULL),
(419, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:04:36', NULL),
(420, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:04:36', NULL),
(421, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:04:46', NULL),
(422, 'cvq', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:04:46', NULL),
(423, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:04:52', NULL),
(424, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:04:52', NULL),
(425, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:04:52', NULL),
(426, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:05:01', NULL),
(427, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:05:01', NULL),
(428, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:05:01', NULL),
(429, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:05:38', NULL),
(430, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 17:05:46', NULL),
(431, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/profile?id=66', 'visited', '2015-10-28 17:05:53', NULL),
(432, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:05:55', NULL),
(433, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/tickets/admin/spool', 'visited', '2015-10-28 17:05:57', NULL),
(434, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:06:01', NULL),
(435, 'mm', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:06:01', NULL),
(436, 'mm', NULL, 'visited', '2015-10-28 17:07:36', NULL),
(437, 'aa', NULL, 'visited', '2015-10-28 17:07:37', NULL),
(438, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 17:07:41', NULL),
(439, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/tickets/admin/spool', 'visited', '2015-10-28 17:07:42', NULL),
(440, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:07:48', NULL),
(441, 'mm', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:07:49', NULL),
(442, 'mm', NULL, 'visited', '2015-10-28 17:07:59', NULL),
(443, 'aa', NULL, 'visited', '2015-10-28 17:08:00', NULL),
(444, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 17:08:03', NULL),
(445, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/tickets/admin/spool', 'visited', '2015-10-28 17:08:04', NULL),
(446, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:08:10', NULL),
(447, 'cvq', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:08:10', NULL),
(448, 'anon.', NULL, 'visited', '2015-10-28 17:08:27', NULL),
(449, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 17:08:53', NULL),
(450, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/profile', 'visited', '2015-10-28 17:08:58', NULL),
(451, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/tickets/', 'visited', '2015-10-28 17:09:00', NULL),
(452, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:09:04', NULL),
(453, 'ok', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:09:05', NULL),
(454, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 17:10:00', NULL),
(455, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/profile', 'visited', '2015-10-28 17:10:04', NULL),
(456, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:10:11', NULL),
(457, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:10:17', NULL),
(458, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/profile', 'visited', '2015-10-28 17:11:07', NULL),
(459, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:11:10', NULL),
(460, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:11:14', NULL),
(461, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:11:53', NULL),
(462, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:11:58', NULL),
(463, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:12:07', NULL),
(464, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:12:12', NULL),
(465, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:12:38', NULL),
(466, 'mm', 'http://localhost/Symfony/web/app_dev.php/fr/profile', 'visited', '2015-10-28 17:12:43', NULL),
(467, 'mm', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:12:55', NULL),
(468, 'ok', 'http://localhost/Symfony/web/app_dev.php/fr/profile', 'visited', '2015-10-28 17:13:05', NULL),
(469, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/profile', 'visited', '2015-10-28 17:13:15', NULL),
(470, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:13:21', NULL),
(471, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:13:55', NULL),
(472, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 17:14:07', NULL),
(473, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:14:11', NULL),
(474, 'mm', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:14:17', NULL),
(475, 'ok', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:14:25', NULL),
(476, 'mm', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:14:31', NULL),
(477, 'ok', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:15:02', NULL),
(478, 'ok', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:15:02', NULL),
(479, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:15:10', NULL),
(480, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:15:10', NULL),
(481, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:15:11', NULL),
(482, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 17:15:26', NULL),
(483, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/profile', 'visited', '2015-10-28 17:15:33', NULL),
(484, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:15:37', NULL),
(485, 'mm', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:15:37', NULL),
(486, 'mm', 'http://localhost/Symfony/web/app_dev.php/fr/logout', 'logout', '2015-10-28 17:15:45', NULL),
(487, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/profile', 'visited', '2015-10-28 17:15:45', NULL),
(488, 'aa', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-10-28 17:15:52', NULL),
(489, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 17:15:52', NULL),
(490, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 17:15:58', NULL),
(491, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:16:02', NULL),
(492, 'ss', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:16:03', NULL),
(493, 'anon.', NULL, 'visited', '2015-10-28 17:16:21', NULL),
(494, 'anon.', NULL, 'visited', '2015-10-28 17:16:21', NULL),
(495, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 17:52:34', NULL),
(496, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/profile', 'visited', '2015-10-28 17:53:02', NULL),
(497, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:53:09', NULL),
(498, 'mm', 'http://localhost/Symfony/web/app_dev.php/fr/profile', 'visited', '2015-10-28 17:53:14', NULL),
(499, 'mm', NULL, 'visited', '2015-10-28 17:53:25', NULL),
(500, 'mm', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 17:53:39', NULL),
(501, 'mm', 'http://localhost/Symfony/web/app_dev.php/fr/logout', 'logout', '2015-10-28 17:53:44', NULL),
(502, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/profile', 'visited', '2015-10-28 17:53:44', NULL),
(503, 'aa', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-10-28 17:53:50', NULL),
(504, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 17:53:50', NULL),
(505, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 17:53:54', NULL),
(506, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:54:00', NULL),
(507, 'ok', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 17:54:06', NULL),
(508, 'anon.', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 17:54:31', NULL),
(509, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 17:54:39', NULL),
(510, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:54:44', NULL),
(511, 'xxh', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 17:54:50', NULL),
(512, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 17:54:55', NULL),
(513, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:54:59', NULL),
(514, 'eezqaa', NULL, 'visited', '2015-10-28 17:55:09', NULL),
(515, 'anon.', NULL, 'visited', '2015-10-28 17:55:24', NULL),
(516, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 17:56:26', NULL),
(517, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 17:56:31', NULL),
(518, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/tickets/admin/spool', 'visited', '2015-10-28 17:56:32', NULL),
(519, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:56:37', NULL),
(520, 'ss', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:56:38', NULL),
(521, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:56:47', NULL),
(522, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:56:48', NULL),
(523, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:56:48', NULL),
(524, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 17:56:55', NULL),
(525, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/profile', 'visited', '2015-10-28 17:57:01', NULL),
(526, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:57:08', NULL),
(527, 'mm', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 17:57:08', NULL),
(528, 'mm', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-10-28 17:59:18', NULL),
(529, 'mm', NULL, 'visited', '2015-10-28 17:59:18', NULL),
(530, 'mm', 'http://localhost/Symfony/web/app_dev.php/fr/logout', 'logout', '2015-10-28 17:59:22', NULL),
(531, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 17:59:23', NULL),
(532, 'mm', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-10-28 18:00:33', NULL),
(533, 'mm', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 18:00:33', NULL),
(534, 'mm', 'http://localhost/Symfony/web/app_dev.php/fr/logout', 'logout', '2015-10-28 18:00:42', NULL),
(535, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 18:00:43', NULL),
(536, '&&', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-10-28 18:00:53', NULL),
(537, '&&', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 18:00:53', NULL),
(538, '&&', 'http://localhost/Symfony/web/app_dev.php/en/logout', 'logout', '2015-10-28 18:00:57', NULL),
(539, 'anon.', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-10-28 18:00:58', NULL),
(540, 'aa', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-10-28 18:01:10', NULL),
(541, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 18:01:11', NULL),
(542, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 18:01:14', NULL),
(543, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 18:01:24', NULL),
(544, '&&', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 18:01:25', NULL),
(545, '&&', 'http://localhost/Symfony/web/app_dev.php/fr/logout', 'logout', '2015-10-28 18:02:20', NULL),
(546, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/profile', 'visited', '2015-10-28 18:02:20', NULL),
(547, 'aa', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-10-28 18:02:25', NULL),
(548, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 18:02:25', NULL),
(549, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 18:02:29', NULL),
(550, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 18:02:32', NULL),
(551, 'mm', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 18:02:33', NULL),
(552, 'mm', NULL, 'visited', '2015-10-28 18:02:42', NULL),
(553, 'aa', NULL, 'visited', '2015-10-28 18:02:42', NULL),
(554, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 18:02:47', NULL),
(555, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 18:02:53', NULL),
(556, '&&', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 18:02:54', NULL),
(557, '&&', NULL, 'visited', '2015-10-28 18:12:02', NULL),
(558, 'aa', NULL, 'visited', '2015-10-28 18:12:02', NULL),
(559, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 18:12:08', NULL),
(560, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 18:12:16', NULL),
(561, 'ok', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 18:12:16', NULL),
(562, 'ok', NULL, 'visited', '2015-10-28 18:14:35', NULL),
(563, 'aa', NULL, 'visited', '2015-10-28 18:14:35', NULL),
(564, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 18:16:02', NULL),
(565, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 18:16:07', NULL),
(566, 'lool', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 18:16:07', NULL),
(567, 'lool', NULL, 'visited', '2015-10-28 18:16:16', NULL),
(568, 'aa', NULL, 'visited', '2015-10-28 18:16:17', NULL),
(569, 'aa', NULL, 'visited', '2015-10-28 18:19:38', NULL),
(570, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 18:19:44', NULL),
(571, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 18:19:45', NULL),
(572, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 18:19:51', NULL),
(573, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 18:19:56', NULL),
(574, 'ss', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 18:19:56', NULL),
(575, 'ss', 'http://localhost/Symfony/web/app_dev.php/fr/profile', 'visited', '2015-10-28 18:20:00', NULL),
(576, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/profile', 'visited', '2015-10-28 18:20:01', NULL),
(577, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 18:20:14', NULL),
(578, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 18:20:14', NULL),
(579, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-10-28 18:20:17', NULL),
(580, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/admin', 'visited', '2015-10-28 18:20:23', NULL),
(581, 'mm', 'http://localhost/Symfony/web/app_dev.php/en/admin', 'visited', '2015-10-28 18:20:23', NULL),
(582, 'mm', 'http://localhost/Symfony/web/app_dev.php/en/profile', 'visited', '2015-10-28 18:20:29', NULL),
(583, 'mm', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-10-28 18:20:33', NULL),
(584, 'mm', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-10-28 18:20:33', NULL),
(585, 'mm', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 18:20:36', NULL),
(586, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 18:20:36', NULL),
(587, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 18:20:53', NULL),
(588, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 18:20:56', NULL),
(589, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 18:21:00', NULL),
(590, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 18:21:00', NULL),
(591, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/logout', 'logout', '2015-10-28 18:21:02', NULL),
(592, 'anon.', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-10-28 18:21:03', NULL),
(593, 'aa', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-10-28 18:21:07', NULL),
(594, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 18:21:08', NULL),
(595, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-10-28 18:22:20', NULL),
(596, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/logout', 'logout', '2015-10-28 18:22:26', NULL),
(597, 'anon.', 'http://localhost/Symfony/web/app_dev.php/en/admin', 'visited', '2015-10-28 18:22:26', NULL),
(598, 'uu', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-10-28 18:22:37', NULL),
(599, 'uu', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 18:22:37', NULL),
(600, 'uu', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 18:22:41', NULL),
(601, 'uu', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 18:22:45', NULL),
(602, 'uu', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 18:22:45', NULL),
(603, 'uu', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 18:22:48', NULL),
(604, 'uu', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 18:22:53', NULL),
(605, 'mm', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 18:22:54', NULL),
(606, 'mm', 'http://localhost/Symfony/web/app_dev.php/fr/profile', 'visited', '2015-10-28 18:23:01', NULL),
(607, 'uu', 'http://localhost/Symfony/web/app_dev.php/fr/profile', 'visited', '2015-10-28 18:23:01', NULL),
(608, 'uu', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 18:23:04', NULL),
(609, 'uu', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 18:23:09', NULL),
(610, 'xxh', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-28 18:23:09', NULL),
(611, 'xxh', 'http://localhost/Symfony/web/app_dev.php/fr/logout', 'logout', '2015-10-28 18:23:12', NULL),
(612, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/profile', 'visited', '2015-10-28 18:23:12', NULL),
(613, 'aa', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-10-28 18:23:17', NULL),
(614, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 18:23:18', NULL),
(615, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-10-28 18:23:20', NULL),
(616, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-10-28 18:23:21', NULL),
(617, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-10-28 18:24:59', NULL),
(618, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/admin', 'visited', '2015-10-28 18:25:05', NULL),
(619, 'mm', 'http://localhost/Symfony/web/app_dev.php/en/admin', 'visited', '2015-10-28 18:25:05', NULL),
(620, 'mm', 'http://localhost/Symfony/web/app_dev.php/en/profile', 'visited', '2015-10-28 18:25:10', NULL),
(621, 'mm', 'http://localhost/Symfony/web/app_dev.php/en/profile', 'visited', '2015-10-28 18:25:10', NULL),
(622, 'mm', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 18:25:12', NULL),
(623, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/login', 'login', '2015-10-28 18:25:13', NULL),
(624, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 18:25:13', NULL),
(625, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-10-28 18:25:45', NULL),
(626, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/admin', 'visited', '2015-10-28 18:26:04', NULL),
(627, 'mm', 'http://localhost/Symfony/web/app_dev.php/en/login', 'login', '2015-10-28 18:26:05', NULL),
(628, 'mm', 'http://localhost/Symfony/web/app_dev.php/en/admin', 'visited', '2015-10-28 18:26:05', NULL),
(629, 'mm', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 18:26:09', NULL),
(630, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/login', 'login', '2015-10-28 18:26:10', NULL),
(631, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 18:26:10', NULL),
(632, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/logout', 'logout', '2015-10-28 18:26:13', NULL),
(633, 'anon.', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-10-28 18:26:13', NULL),
(634, 'anon.', NULL, 'visited', '2015-10-28 18:26:51', NULL),
(635, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/login', 'login', '2015-10-28 18:26:51', NULL),
(636, 'aa', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-10-28 18:26:58', NULL),
(637, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-28 18:26:59', NULL),
(638, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-10-28 18:27:02', NULL),
(639, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/admin', 'visited', '2015-10-28 18:27:08', NULL),
(640, 'mm', 'http://localhost/Symfony/web/app_dev.php/en/login', 'login', '2015-10-28 18:27:08', NULL),
(641, 'mm', 'http://localhost/Symfony/web/app_dev.php/en/admin', 'visited', '2015-10-28 18:27:09', NULL),
(642, 'mm', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 18:27:11', NULL),
(643, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/login', 'login', '2015-10-28 18:27:11', NULL),
(644, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 18:27:11', NULL),
(645, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-10-28 19:07:01', NULL),
(646, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/forum/', 'visited', '2015-10-28 19:07:14', NULL),
(647, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/forum/', 'visited', '2015-10-28 19:07:15', NULL),
(648, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 19:07:18', NULL),
(649, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/forum/', 'visited', '2015-10-28 19:07:23', NULL),
(650, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/forum/', 'visited', '2015-10-28 19:08:05', NULL),
(651, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/forum/categorie_add', 'visited', '2015-10-28 19:25:17', NULL),
(652, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-28 19:25:21', NULL),
(653, 'aa', NULL, 'visited', '2015-10-28 19:25:30', NULL),
(654, 'anon.', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-10-29 15:39:55', NULL),
(655, 'anon.', 'http://localhost/Symfony/web/app_dev.php/', 'visited', '2015-10-30 01:40:40', NULL),
(656, 'anon.', 'http://localhost/Symfony/web/app_dev.php/en/login', 'login', '2015-10-30 01:40:41', NULL),
(657, 'anon.', 'http://localhost/Symfony/web/app_dev.php/en/login', 'visited', '2015-10-30 01:40:46', NULL),
(658, 'anon.', 'http://localhost/Symfony/web/app_dev.php/en/login', 'visited', '2015-10-30 01:40:46', NULL),
(659, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-30 01:40:49', NULL),
(660, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/login', 'login', '2015-10-30 01:40:49', NULL),
(661, 'aa', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-10-30 01:41:03', NULL),
(662, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-30 01:41:04', NULL),
(663, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-30 01:41:07', NULL),
(664, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/tickets/', 'visited', '2015-10-30 01:41:11', NULL),
(665, 'anon.', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-10-30 19:14:53', NULL),
(666, 'aa', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-10-30 19:20:46', NULL),
(667, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-30 19:20:57', NULL),
(668, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-10-30 19:21:00', NULL),
(669, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-10-30 19:21:01', NULL),
(670, 'testadmin', 'http://localhost/Symfony/web/app_dev.php/register/check-email', 'registration', '2015-10-30 19:22:31', NULL),
(671, 'aa', 'http://localhost/Symfony/web/app_dev.php/register/check-email', 'visited', '2015-10-30 19:22:46', NULL),
(672, 'test2admin', 'http://localhost/Symfony/web/app_dev.php/register/check-email', 'registration', '2015-10-30 19:25:00', NULL),
(673, 'aa', 'http://localhost/Symfony/web/app_dev.php/register/check-email', 'visited', '2015-10-30 19:31:14', NULL),
(674, 'testagainadmin', 'http://localhost/Symfony/web/app_dev.php/register/check-email', 'registration', '2015-10-30 19:31:36', NULL),
(675, 'aa', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-10-30 19:32:14', NULL),
(676, 'aa', NULL, 'visited', '2015-10-30 19:32:14', NULL),
(677, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-30 19:32:18', NULL),
(678, 'hhtest', 'http://localhost/Symfony/web/app_dev.php/register/check-email', 'registration', '2015-10-30 19:33:58', NULL),
(679, 'hhtestq', 'http://localhost/Symfony/web/app_dev.php/register/check-email', 'registration', '2015-10-30 19:34:53', NULL),
(680, 'hhtaestq', 'http://localhost/Symfony/web/app_dev.php/register/check-email', 'registration', '2015-10-30 19:36:54', NULL),
(681, 'hhtqaestq', 'http://localhost/Symfony/web/app_dev.php/register/check-email', 'registration', '2015-10-30 19:38:23', NULL),
(682, 'aa', 'http://localhost/Symfony/web/app_dev.php/register/', 'visited', '2015-10-30 19:38:23', NULL),
(683, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-30 19:38:52', NULL),
(684, 'aa', 'http://localhost/Symfony/web/app_dev.php/projet/profile/change-password', 'visited', '2015-10-30 19:39:04', NULL),
(685, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-30 19:44:08', NULL),
(686, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-30 19:44:10', NULL),
(687, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-30 19:44:22', NULL),
(688, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-30 19:44:22', NULL),
(689, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-10-30 19:44:26', NULL),
(690, 'anon.', 'http://localhost/Symfony/web/app_dev.php/en/admin', 'visited', '2015-10-30 20:19:19', NULL),
(691, 'anon.', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-10-30 20:22:36', NULL),
(692, 'anon.', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-10-30 22:34:13', NULL),
(693, 'aa', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-10-30 22:34:23', NULL),
(694, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-10-30 22:34:23', NULL),
(695, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-10-30 22:34:26', NULL),
(696, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/admin', 'visited', '2015-10-30 22:34:31', NULL),
(697, 'ee', 'http://localhost/Symfony/web/app_dev.php/en/login', 'login', '2015-10-30 22:34:31', NULL),
(698, 'ee', 'http://localhost/Symfony/web/app_dev.php/en/admin', 'visited', '2015-10-30 22:34:32', NULL),
(699, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-30 22:34:36', NULL),
(700, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/', 'visited', '2015-10-30 22:34:42', NULL),
(701, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/categorie/10', 'visited', '2015-10-30 22:34:48', NULL),
(702, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads/7', 'visited', '2015-10-30 22:34:56', NULL),
(703, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads/7', 'visited', '2015-10-30 22:37:43', NULL),
(704, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads/7', 'visited', '2015-10-30 22:38:01', NULL),
(705, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads/7', 'visited', '2015-10-30 22:38:24', NULL),
(706, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads/7', 'visited', '2015-10-30 22:38:45', NULL),
(707, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads/7', 'visited', '2015-10-30 22:39:04', NULL),
(708, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/answer_add/7', 'visited', '2015-10-30 22:39:18', NULL),
(709, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/answer_add/7', 'visited', '2015-10-30 22:39:18', NULL),
(710, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads/7', 'visited', '2015-10-30 22:39:25', NULL),
(711, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/commentaire_add/2', 'visited', '2015-10-30 22:39:35', NULL),
(712, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/commentaire_add/2', 'visited', '2015-10-30 22:39:36', NULL),
(713, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads/7', 'visited', '2015-10-30 22:39:43', NULL),
(714, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/commentaire_delete/1', 'visited', '2015-10-30 22:39:46', NULL),
(715, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/commentaire_delete/1', 'visited', '2015-10-30 22:39:46', NULL),
(716, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads/7', 'visited', '2015-10-30 22:40:02', NULL),
(717, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads/7', 'visited', '2015-10-30 22:41:04', NULL),
(718, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads/7', 'visited', '2015-10-30 22:41:30', NULL),
(719, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads/7', 'visited', '2015-10-30 22:41:59', NULL),
(720, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/commentaire_add/2', 'visited', '2015-10-30 22:42:13', NULL),
(721, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/commentaire_add/2', 'visited', '2015-10-30 22:42:13', NULL),
(722, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads/7', 'visited', '2015-10-30 22:42:19', NULL),
(723, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/commentaire_add/2', 'visited', '2015-10-30 22:42:43', NULL),
(724, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/', 'visited', '2015-10-30 22:42:47', NULL),
(725, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/categorie/10', 'visited', '2015-10-30 22:42:49', NULL),
(726, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/categorie/10', 'visited', '2015-10-30 22:44:27', NULL),
(727, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/categorie/10', 'visited', '2015-10-30 22:45:02', NULL),
(728, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/categorie/10', 'visited', '2015-10-30 22:45:21', NULL),
(729, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads_add_in_categorie/10', 'visited', '2015-10-30 22:46:44', NULL),
(730, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads_add_in_categorie/10', 'visited', '2015-10-30 22:46:44', NULL),
(731, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/categorie/10', 'visited', '2015-10-30 22:46:51', NULL),
(732, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads/8', 'visited', '2015-10-30 22:47:24', NULL),
(733, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads/8', 'visited', '2015-10-30 22:47:40', NULL),
(734, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads/8', 'visited', '2015-10-30 22:48:13', NULL),
(735, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads_edit/8', 'visited', '2015-10-30 22:48:20', NULL),
(736, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads_edit/8', 'visited', '2015-10-30 22:48:21', NULL),
(737, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads/8', 'visited', '2015-10-30 22:48:24', NULL),
(738, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads/8', 'visited', '2015-10-30 22:50:17', NULL),
(739, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads/8', 'visited', '2015-10-30 22:50:28', NULL),
(740, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads_edit/8', 'visited', '2015-10-30 22:55:23', NULL),
(741, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads/8', 'visited', '2015-10-30 22:55:25', NULL),
(742, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads/8', 'visited', '2015-10-30 22:57:49', NULL),
(743, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads_edit/8', 'visited', '2015-10-30 22:57:54', NULL),
(744, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads/8', 'visited', '2015-10-30 22:57:56', NULL),
(745, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/categorie/10', 'visited', '2015-10-30 22:58:02', NULL),
(746, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/sous_categorie/1', 'visited', '2015-10-30 22:58:04', NULL),
(747, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads_add/1', 'visited', '2015-10-30 22:58:11', NULL),
(748, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads_add/1', 'visited', '2015-10-30 22:58:11', NULL),
(749, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/sous_categorie/1', 'visited', '2015-10-30 22:58:14', NULL),
(750, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads/9', 'visited', '2015-10-30 22:58:17', NULL),
(751, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads_delete/9', 'visited', '2015-10-30 22:59:57', NULL),
(752, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/categorie/10', 'visited', '2015-10-30 23:00:02', NULL),
(753, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/sous_categorie/1', 'visited', '2015-10-30 23:00:05', NULL),
(754, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads_add/1', 'visited', '2015-10-30 23:00:10', NULL),
(755, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads_add/1', 'visited', '2015-10-30 23:00:11', NULL),
(756, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/sous_categorie/1', 'visited', '2015-10-30 23:00:13', NULL),
(757, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads/10', 'visited', '2015-10-30 23:00:15', NULL),
(758, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads_delete/10', 'visited', '2015-10-30 23:00:18', NULL),
(759, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/categorie/10', 'visited', '2015-10-30 23:00:21', NULL),
(760, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads/7', 'visited', '2015-10-30 23:00:28', NULL),
(761, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads/7', 'visited', '2015-10-30 23:00:28', NULL),
(762, 'ee', 'http://localhost/Symfony/web/app_dev.php/fr/forum/categorie/10', 'visited', '2015-10-30 23:01:02', NULL),
(763, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/login', 'login', '2015-10-30 23:01:03', NULL),
(764, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/forum/categorie/10', 'visited', '2015-10-30 23:01:03', NULL),
(765, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-10-30 23:01:13', NULL),
(766, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/forum/', 'visited', '2015-10-30 23:01:21', NULL),
(767, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/forum/categorie/12', 'visited', '2015-10-30 23:01:31', NULL),
(768, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/tickets/', 'visited', '2015-10-30 23:01:39', NULL),
(769, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/tickets/admin/spool/admin_tickets', 'visited', '2015-10-30 23:01:45', NULL),
(770, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/tickets/admin/admin_close/9', 'visited', '2015-10-30 23:01:48', NULL),
(771, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/tickets/admin/admin_close/9', 'visited', '2015-10-30 23:01:48', NULL),
(772, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/tickets/admin/spool', 'visited', '2015-10-30 23:01:51', NULL),
(773, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/tickets/admin/spool/admin_tickets', 'visited', '2015-10-30 23:02:01', NULL),
(774, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/tickets/admin/spool/admin_all_open_tickets', 'visited', '2015-10-30 23:02:03', NULL),
(775, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/tickets/admin/spool/admin_all_close_tickets', 'visited', '2015-10-30 23:02:09', NULL),
(776, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/tickets/admin/spool', 'visited', '2015-10-30 23:02:13', NULL),
(777, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/tickets/', 'visited', '2015-10-30 23:02:21', NULL),
(778, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/tickets/', 'visited', '2015-10-30 23:02:31', NULL),
(779, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/tickets/admin/spool', 'visited', '2015-10-30 23:02:38', NULL),
(780, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/tickets/admin/spool', 'visited', '2015-10-30 23:06:31', NULL),
(781, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/tickets/', 'visited', '2015-10-30 23:06:36', NULL),
(782, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/tickets/my_tickets', 'visited', '2015-10-30 23:10:37', NULL),
(783, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/tickets/', 'visited', '2015-10-30 23:10:45', NULL),
(784, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/tickets/', 'visited', '2015-10-30 23:10:50', NULL),
(785, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/tickets/', 'visited', '2015-10-30 23:11:24', NULL),
(786, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/tickets/closetickets', 'visited', '2015-10-30 23:12:06', NULL),
(787, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/tickets/', 'visited', '2015-10-30 23:12:08', NULL),
(788, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/tickets/my_tickets', 'visited', '2015-10-30 23:12:12', NULL),
(789, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/tickets/', 'visited', '2015-10-30 23:12:14', NULL),
(790, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/tickets/closetickets', 'visited', '2015-10-30 23:12:17', NULL),
(791, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/tickets/', 'visited', '2015-10-30 23:12:19', NULL),
(792, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/tickets/', 'visited', '2015-10-30 23:12:56', NULL),
(793, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/tickets/new_tickets', 'visited', '2015-10-30 23:15:41', NULL),
(794, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-10-30 23:15:44', NULL),
(795, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/forum/', 'visited', '2015-10-30 23:15:49', NULL),
(796, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/forum/categorie/10', 'visited', '2015-10-30 23:15:54', NULL),
(797, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/forum/threads_add_in_categorie/10', 'visited', '2015-10-30 23:15:59', NULL),
(798, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/forum/threads_add_in_categorie/10', 'visited', '2015-10-30 23:15:59', NULL),
(799, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/forum/categorie/10', 'visited', '2015-10-30 23:16:02', NULL),
(800, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/forum/threads/11', 'visited', '2015-10-30 23:16:07', NULL),
(801, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/admin', 'visited', '2015-10-30 23:16:12', NULL),
(802, 'hhtestq', 'http://localhost/Symfony/web/app_dev.php/en/login', 'login', '2015-10-30 23:16:12', NULL),
(803, 'hhtestq', 'http://localhost/Symfony/web/app_dev.php/en/admin', 'visited', '2015-10-30 23:16:12', NULL),
(804, 'hhtestq', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-30 23:16:15', NULL),
(805, 'hhtestq', 'http://localhost/Symfony/web/app_dev.php/fr/forum/', 'visited', '2015-10-30 23:16:18', NULL),
(806, 'hhtestq', 'http://localhost/Symfony/web/app_dev.php/fr/forum/categorie/10', 'visited', '2015-10-30 23:16:22', NULL),
(807, 'hhtestq', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads/11', 'visited', '2015-10-30 23:16:27', NULL),
(808, 'hhtestq', 'http://localhost/Symfony/web/app_dev.php/fr/forum/answer_add/11', 'visited', '2015-10-30 23:16:37', NULL),
(809, 'hhtestq', 'http://localhost/Symfony/web/app_dev.php/fr/forum/answer_add/11', 'visited', '2015-10-30 23:16:37', NULL),
(810, 'hhtestq', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads/11', 'visited', '2015-10-30 23:16:43', NULL),
(811, 'hhtestq', 'http://localhost/Symfony/web/app_dev.php/fr/forum/commentaire_add/3', 'visited', '2015-10-30 23:16:54', NULL),
(812, 'hhtestq', 'http://localhost/Symfony/web/app_dev.php/fr/forum/commentaire_add/3', 'visited', '2015-10-30 23:16:55', NULL),
(813, 'hhtestq', 'http://localhost/Symfony/web/app_dev.php/fr/forum/threads/11', 'visited', '2015-10-30 23:17:02', NULL),
(814, 'hhtestq', 'http://localhost/Symfony/web/app_dev.php/fr/forum/commentaire_delete/3', 'visited', '2015-10-30 23:17:04', NULL),
(815, 'hhtestq', 'http://localhost/Symfony/web/app_dev.php/fr/forum/commentaire_delete/3', 'visited', '2015-10-30 23:17:05', NULL),
(816, 'hhtestq', 'http://localhost/Symfony/web/app_dev.php/fr/forum/answer_delete/3', 'visited', '2015-10-30 23:17:19', NULL),
(817, 'hhtestq', 'http://localhost/Symfony/web/app_dev.php/fr/forum/categorie/10', 'visited', '2015-10-30 23:17:21', NULL),
(818, 'hhtestq', 'http://localhost/Symfony/web/app_dev.php/fr/forum/', 'visited', '2015-10-30 23:17:26', NULL),
(819, 'hhtestq', 'http://localhost/Symfony/web/app_dev.php/fr/forum/', 'visited', '2015-10-30 23:17:26', NULL),
(820, 'hhtestq', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-10-30 23:17:29', NULL),
(821, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/login', 'login', '2015-10-30 23:17:30', NULL),
(822, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-10-30 23:17:30', NULL),
(823, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-10-30 23:17:35', NULL),
(824, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-10-30 23:17:35', NULL),
(825, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-30 23:17:38', NULL),
(826, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/login', 'login', '2015-10-30 23:17:38', NULL),
(827, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-30 23:17:38', NULL),
(828, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-30 23:17:42', NULL),
(829, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-30 23:17:47', NULL),
(830, 'lool', 'http://localhost/Symfony/web/app_dev.php/fr/login', 'login', '2015-10-30 23:17:47', NULL),
(831, 'lool', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-10-30 23:17:47', NULL),
(832, 'lool', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-30 23:17:51', NULL),
(833, 'lool', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-30 23:17:51', NULL),
(834, 'lool', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-10-30 23:17:58', NULL);
INSERT INTO `log` (`id`, `username`, `url`, `action`, `date`, `role`) VALUES
(835, 'lool', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-10-30 23:17:59', NULL),
(836, 'lool', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-10-30 23:18:03', NULL),
(837, 'lool', 'http://localhost/Symfony/web/app_dev.php/en/tickets/', 'visited', '2015-10-30 23:18:07', NULL),
(838, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/login', 'login', '2015-10-30 23:18:07', NULL),
(839, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/tickets/', 'visited', '2015-10-30 23:18:08', NULL),
(840, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-30 23:23:42', NULL),
(841, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/login', 'login', '2015-10-30 23:23:42', NULL),
(842, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-30 23:23:42', NULL),
(843, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-30 23:23:54', NULL),
(844, 'aa', NULL, 'visited', '2015-10-30 23:25:24', NULL),
(845, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin/log', 'visited', '2015-10-30 23:26:06', NULL),
(846, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/forum/', 'visited', '2015-10-30 23:26:08', NULL),
(847, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin/log', 'visited', '2015-10-30 23:26:24', NULL),
(848, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/login', 'login', '2015-10-30 23:26:24', NULL),
(849, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin/log', 'visited', '2015-10-30 23:26:24', NULL),
(850, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-30 23:26:27', NULL),
(851, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin/log', 'visited', '2015-10-30 23:26:55', NULL),
(852, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/forum/', 'visited', '2015-10-30 23:26:58', NULL),
(853, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/forum/', 'visited', '2015-10-30 23:27:03', NULL),
(854, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/profile', 'visited', '2015-10-30 23:27:05', NULL),
(855, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/tickets/', 'visited', '2015-10-30 23:27:07', NULL),
(856, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/forum/', 'visited', '2015-10-30 23:27:10', NULL),
(857, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/login', 'login', '2015-10-30 23:27:10', NULL),
(858, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/forum/', 'visited', '2015-10-30 23:27:11', NULL),
(859, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-10-30 23:27:14', NULL),
(860, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/login', 'login', '2015-10-30 23:27:49', NULL),
(861, 'aa', NULL, 'visited', '2015-10-30 23:27:50', NULL),
(862, 'anon.', 'http://localhost/Symfony/Symfony/web/app_dev.php/', 'login', '2015-12-16 15:35:14', NULL),
(863, 'anon.', 'http://localhost/Symfony/Symfony/web/app_dev.php/', 'login', '2015-12-16 15:35:14', NULL),
(864, 'aa', 'http://localhost/Symfony/Symfony/web/app_dev.php/', 'login', '2015-12-16 15:35:28', NULL),
(865, 'aa', 'http://localhost/Symfony/Symfony/web/app_dev.php/', 'login', '2015-12-16 15:36:42', NULL),
(866, 'aa', NULL, 'visited', '2015-12-16 15:37:00', NULL),
(867, 'aa', NULL, 'visited', '2015-12-16 15:57:10', NULL),
(868, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-12-16 15:57:17', NULL),
(869, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-12-16 15:57:20', NULL),
(870, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/tickets/admin/spool', 'visited', '2015-12-16 15:57:23', NULL),
(871, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin/log', 'visited', '2015-12-16 15:57:26', NULL),
(872, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/forum/', 'visited', '2015-12-16 15:57:28', NULL),
(873, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/tickets/', 'visited', '2015-12-16 15:57:30', NULL),
(874, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/logout', 'logout', '2015-12-16 15:57:32', NULL),
(875, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/profile', 'visited', '2015-12-16 15:57:33', NULL),
(876, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/profile', 'visited', '2015-12-16 15:57:42', NULL),
(877, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/login', 'login', '2015-12-16 15:57:42', NULL),
(878, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/profile', 'visited', '2015-12-16 15:57:42', NULL),
(879, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/login', 'login', '2015-12-16 15:57:42', NULL),
(880, 'aa', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-12-16 15:57:55', NULL),
(881, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-12-16 15:57:55', NULL),
(882, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-12-16 15:57:58', NULL),
(883, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-12-16 15:58:05', NULL),
(884, 'mm', 'http://localhost/Symfony/web/app_dev.php/fr/login', 'login', '2015-12-16 15:58:05', NULL),
(885, 'mm', 'http://localhost/Symfony/web/app_dev.php/fr/admin', 'visited', '2015-12-16 15:58:05', NULL),
(886, 'mm', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-12-16 15:58:09', NULL),
(887, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/login', 'login', '2015-12-16 15:58:09', NULL),
(888, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-12-16 15:58:10', NULL),
(889, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-12-16 16:04:12', NULL),
(890, 'aa', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-12-16 16:04:12', NULL),
(891, 'anon.', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-12-18 12:21:19', NULL),
(892, 'anon.', 'http://localhost/Symfony/web/app_dev.php', 'visited', '2015-12-18 12:21:25', NULL),
(893, 'anon.', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-12-18 12:21:30', NULL),
(894, 'anon.', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-12-18 12:21:31', NULL),
(895, 'aa', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-12-18 12:21:39', NULL),
(896, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-12-18 12:21:39', NULL),
(897, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-12-18 12:21:42', NULL),
(898, 'anon.', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-12-18 13:44:37', NULL),
(899, 'anon.', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-12-19 15:55:13', NULL),
(900, 'anon.', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-12-19 16:48:09', NULL),
(901, 'anon.', 'http://localhost/Symfony/web/app_dev.php/en/login', 'login', '2015-12-19 16:52:19', NULL),
(902, 'anon.', 'http://localhost/Symfony/web/app_dev.php/login_ldap', 'visited', '2015-12-19 16:54:00', NULL),
(903, 'aa', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-12-19 16:54:14', NULL),
(904, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-12-19 16:54:14', NULL),
(905, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-12-19 16:54:21', NULL),
(906, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/admin', 'visited', '2015-12-19 16:54:27', NULL),
(907, 'mm', 'http://localhost/Symfony/web/app_dev.php/en/login', 'login', '2015-12-19 16:54:27', NULL),
(908, 'mm', 'http://localhost/Symfony/web/app_dev.php/en/admin', 'visited', '2015-12-19 16:54:27', NULL),
(909, 'mm', 'http://localhost/Symfony/web/app_dev.php/fr/logout', 'logout', '2015-12-19 16:58:22', NULL),
(910, 'anon.', 'http://localhost/Symfony/web/app_dev.php/fr/home', 'visited', '2015-12-19 16:58:22', NULL),
(911, 'anon.', 'http://localhost/Symfony/web/app_dev.php/login_ldap', 'visited', '2015-12-19 16:58:35', NULL),
(912, 'anon.', 'http://localhost/Symfony/web/app_dev.php/login_ldap', 'visited', '2015-12-19 17:04:28', NULL),
(913, 'anon.', 'http://localhost/Symfony/web/app_dev.php/login_ldap', 'visited', '2015-12-19 17:12:27', NULL),
(914, 'aa', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-12-19 17:12:59', NULL),
(915, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-12-19 17:12:59', NULL),
(916, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-12-19 17:13:02', NULL),
(917, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/admin', 'visited', '2015-12-19 17:13:12', NULL),
(918, 'test_moi2', 'http://localhost/Symfony/web/app_dev.php/en/login', 'login', '2015-12-19 17:13:12', NULL),
(919, 'test_moi2', 'http://localhost/Symfony/web/app_dev.php/en/admin', 'visited', '2015-12-19 17:13:12', NULL),
(920, 'anon.', 'http://localhost/Symfony/web/app_dev.php/login_ldap', 'visited', '2015-12-19 17:19:16', NULL),
(921, 'anon.', 'http://localhost/Symfony/web/app_dev.php/login_ldap', 'visited', '2015-12-19 17:26:36', NULL),
(922, 'anon.', 'http://localhost/Symfony/web/app_dev.php/login_ldap', 'visited', '2015-12-19 17:28:31', NULL),
(923, 'anon.', 'http://localhost/Symfony/web/app_dev.php/login_ldap', 'visited', '2015-12-19 17:28:31', NULL),
(924, 'anon.', 'http://localhost/Symfony/web/app_dev.php/login_ldap', 'visited', '2015-12-19 17:32:04', NULL),
(925, 'anon.', 'http://localhost/Symfony/web/app_dev.php/login_ldap', 'visited', '2015-12-19 17:32:05', NULL),
(926, 'anon.', 'http://localhost/Symfony/web/app_dev.php/login_ldap', 'visited', '2015-12-19 17:37:03', NULL),
(927, 'anon.', 'http://localhost/Symfony/web/app_dev.php/login_ldap', 'visited', '2015-12-19 17:37:03', NULL),
(928, 'aa', 'http://localhost/Symfony/web/app_dev.php/', 'login', '2015-12-19 17:37:09', NULL),
(929, 'aa', 'http://localhost/Symfony/web/app_dev.php/login', 'visited', '2015-12-19 17:37:09', NULL),
(930, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/home', 'visited', '2015-12-19 17:37:12', NULL),
(931, 'aa', 'http://localhost/Symfony/web/app_dev.php/en/admin', 'visited', '2015-12-19 17:37:29', NULL),
(932, 'okjhnkjlm', 'http://localhost/Symfony/web/app_dev.php/en/login', 'login', '2015-12-19 17:37:29', NULL),
(933, 'okjhnkjlm', 'http://localhost/Symfony/web/app_dev.php/en/admin', 'visited', '2015-12-19 17:37:29', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `logas`
--

CREATE TABLE IF NOT EXISTS `logas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=80 ;

--
-- Contenu de la table `logas`
--

INSERT INTO `logas` (`id`, `username`, `admin`) VALUES
(32, 'cvq', 'aa'),
(33, 'cvq', 'anon.'),
(34, 'cvq', 'anon.'),
(35, 'mm', 'aa'),
(36, 'mm', 'aa'),
(37, 'cvq', 'aa'),
(38, 'ok', 'aa'),
(39, 'mm', 'aa'),
(40, 'ok', 'mm'),
(41, 'ok', 'anon.'),
(42, 'mm', 'anon.'),
(43, 'mm', 'aa'),
(44, 'ok', 'mm'),
(45, 'mm', 'ok'),
(46, 'ok', 'mm'),
(47, 'ok', 'ok'),
(48, 'mm', 'anon.'),
(49, 'mm', 'aa'),
(50, 'ss', 'aa'),
(51, 'mm', 'aa'),
(52, 'ok', 'aa'),
(53, 'xxh', 'aa'),
(54, 'eezqaa', 'aa'),
(55, 'ss', 'aa'),
(56, 'mm', 'anon.'),
(57, 'mm', 'aa'),
(58, '&&', 'aa'),
(59, 'mm', 'aa'),
(60, '&&', 'aa'),
(61, 'ok', 'aa'),
(62, 'lool', 'aa'),
(63, 'ss', 'aa'),
(64, 'mm', 'aa'),
(65, 'mm', 'uu'),
(66, 'xxh', 'uu'),
(67, 'mm', 'aa'),
(68, 'mm', 'aa'),
(69, 'mm', 'aa'),
(70, 'ee', 'aa'),
(71, 'hhtestq', 'aa'),
(72, 'lool', 'aa'),
(73, 'mm', 'aa'),
(74, 'mm', 'aa'),
(75, 'test_moi2', 'aa'),
(76, 'okhkjbgkhj', 'anon.'),
(77, 'oijkjnqcknj', 'anon.'),
(78, 'okjhnkjlm', 'anon.'),
(79, 'okjhnkjlm', 'aa');

-- --------------------------------------------------------

--
-- Structure de la table `people`
--

CREATE TABLE IF NOT EXISTS `people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Contenu de la table `people`
--

INSERT INTO `people` (`id`, `login`, `pass`) VALUES
(1, 'test_moi1', 'ok'),
(2, 'test_moi2', 'ok'),
(3, '1ok', 'ok'),
(4, '1ok', 'okok'),
(5, '1ok', 'ok'),
(6, 'ok3', 'ok'),
(7, '87ok', 'ok'),
(8, 'ookidoco', 'ok'),
(9, 'okhkjbgkhj', 'ok'),
(10, 'oijkjnqcknj', 'ok'),
(11, 'okjhnkjlm', 'ok');

-- --------------------------------------------------------

--
-- Structure de la table `reponse`
--

CREATE TABLE IF NOT EXISTS `reponse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `id_ref` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Contenu de la table `reponse`
--

INSERT INTO `reponse` (`id`, `author`, `content`, `id_ref`) VALUES
(1, 'moi', 'test reponse', 5),
(2, 'aa', 'hello', 7),
(3, 'aa', 'yolo', 13),
(4, 'aa', 'yolo', 13),
(5, 'aa', 'yolo', 13),
(6, 'aa', 'yolo', 13),
(7, 'aa', 'yolo', 13),
(8, 'aa', 'test reponse', 13),
(9, 'oo', 'ceci est un test reponse', 8),
(10, 'oo', 'ceci est une reponse', 13),
(11, 'aa', 'test du jour', 13),
(12, 'aa', 'ok', 9);

-- --------------------------------------------------------

--
-- Structure de la table `search`
--

CREATE TABLE IF NOT EXISTS `search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Prenom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `photo` longtext COLLATE utf8_unicode_ci,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `sous_categorie`
--

CREATE TABLE IF NOT EXISTS `sous_categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `idCategorie` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Contenu de la table `sous_categorie`
--

INSERT INTO `sous_categorie` (`id`, `author`, `title`, `date`, `idCategorie`) VALUES
(1, 'aa', 'test sup threads', '2015-10-27 17:52:54', 10);

-- --------------------------------------------------------

--
-- Structure de la table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `texttest` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `threads`
--

CREATE TABLE IF NOT EXISTS `threads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `idCategorie` int(11) NOT NULL,
  `idSousCategorie` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Contenu de la table `threads`
--

INSERT INTO `threads` (`id`, `author`, `title`, `content`, `date`, `idCategorie`, `idSousCategorie`) VALUES
(11, 'aa', 'okok', 'okok', '2015-10-30 23:15:59', 10, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tickets`
--

CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `objet` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_author` int(11) NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `etat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `destinataire` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Contenu de la table `tickets`
--

INSERT INTO `tickets` (`id`, `author`, `objet`, `id_author`, `content`, `etat`, `destinataire`) VALUES
(1, 'kkkk', 'knkjnk', 1, 'kkkkkk', 'ok', 'N;'),
(2, 'moi', 'test', 1, 'test pre hydratage objet', 'ok', 'N;'),
(3, 'anon.', 'testname', 2, 'name', 'ok', 'N;'),
(4, 'aa', 'test username', 3, 'usernzme', 'ok', 'N;'),
(5, 'aa', 'pas contetn', 4, 'okok', 'ok', 'N;'),
(8, 'oo', 'test etat', 33, 'ceci est un test de changement detat', 'open', 'eez'),
(9, 'aa', 'test secu', 4, 'test de secu close un tickets pas a  sois', 'close', 'aa'),
(10, 'aa', 'new secu', 4, 'test de secu si c''est pas ton ticket', 'open', 'oo'),
(11, 'aa', 'test attribution', 4, 'test si ca marche', 'open', 'xx'),
(12, 'aa', 'ok', 4, 'test form', 'open', 'oo'),
(13, 'aa', 'test inutile', 4, 'ooo', 'open', 'oo'),
(14, 'aa', 'test array', 4, 'test array', 'open', NULL),
(15, 'aa', 'test array2', 4, 'ojdoi', 'open', NULL),
(16, 'aa', 'nhjj', 4, 'kljl', 'open', NULL),
(17, 'aa', 'nhjj', 4, 'kljl', 'open', NULL),
(18, 'aa', 'oue array', 4, 'okok', 'open', NULL),
(19, 'aa', 'test ok ok', 4, 'oejdoj', 'open', NULL),
(20, 'mm', 'test log as', 36, 'test log as', 'open', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D64992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_8D93D649A0D96FBF` (`email_canonical`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=91 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `language`) VALUES
(4, 'aa', 'aa', 'hfrio@k', 'hfrio@k', 1, '7tgfp49qqskkk80wgc8c0c04o80o0gc', 'oTUBNoo1kWH7T62UYxsNtB+fx3ZzVrXffMcOQoh+4TRxaIWvofEylSgB6D8aaU/fAKAHMx9BxTf3QEkqwyfLDQ==', '2015-12-19 17:37:09', 0, 0, NULL, NULL, NULL, 'a:2:{i:0;s:10:"ROLE_ADMIN";i:1;s:16:"ROLE_SUPER_ADMIN";}', 0, NULL, 'en'),
(33, 'oo', 'oo', 'oo@oo', 'oo@oo', 1, '2n06qf2bjdgk4440wgk08w0484c84go', 'viUi+HrfjJOZ4yGrcB3/ks05W1P20VXWrWEVTm+XmMoOBMa2X0Ago4jQ/HmHNbNvyZ/BniDumbYdXjWZQOSvmw==', '2015-10-20 01:06:02', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 0, NULL, NULL),
(34, 'uu', 'uu', 'uu@uu', 'uu@uu', 1, 'gkys2pfbzc0gwogkoksckg0kwowgk48', 'sBhRYdW6Ui2KrTuCiAprcbkL/yURxy1NBPBbgGWAUtTsenLpPfDN+IEgY1A7uY4askFZIddTyrq0Zkg0dAX5cA==', '2015-10-28 18:22:37', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 0, NULL, NULL),
(36, 'mm', 'mm', 'mm@mm', 'mm@mm', 1, 'k8vo9w7qh80ogkosokgkwkkcgsks80', 'cM1cJuVbiqliVAmkywz6yB/1dMUINVl42HMAFQAG/RHIjvDmd/676GdbbhSI4J0IspBbNOED2JZv2ga5k6/tcg==', '2015-10-28 18:00:33', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'fr'),
(38, 'ok', 'ok', 'jj@jk.fr', 'jj@jk.fr', 1, 'si7rpetqf4000ck08kwsws0w40o4csc', 'ajuYof/51QYbVa1GtaOQXO5gbQz/QsIT5zfdkTuONFNSvUcRoBSfGFZZ8CQaFY9iiTVd4wmoWIe4JFESDsUTEw==', NULL, 0, 0, NULL, 'pzW_XmGDCCltZ7GHIPxvceuJbRp7yZl_Pgg6H6eNnvM', NULL, 'a:0:{}', 0, NULL, NULL),
(40, 'nn', 'nn', 'nn@nn.fr', 'nn@nn.fr', 0, '643d0jdkhvs4go4ss8w0ckw844go4ww', 'cu97nroavvb7m9JuqOsSpsPdgDNeJj51yvIoiOrwBRYYFTk0Jyx/NExk0PW4ac5zLdP0NAbVm60sD3+lddlW/w==', NULL, 0, 0, NULL, 'mULaqDvPERSx39yk-D8KQCP1V4Sjw1ACRUYfLm9s8eU', NULL, 'a:0:{}', 0, NULL, NULL),
(42, 'ss', 'ss', 'ss@ss.fr', 'ss@ss.fr', 1, 'r5r69xgd8ogoosogsw88ksc8kw8sko0', 'C6UdTOhWRR5Fvm7w5iIyeUUbQY3A13nom4ML7j3Rzjlu0jkGHjV+Uj5T7aR1KiAw0j1z1UoykhvLwoYWQCAZEQ==', NULL, 0, 0, NULL, 'nOGC53ttbUyphG5e4P0HkGWFFJR1cah5-3tE30s3agI', NULL, 'a:0:{}', 0, NULL, NULL),
(45, 'xxh', 'xxh', 'xx@xhx.fr', 'xx@xhx.fr', 1, 'qp93my97siogkw0kwcws8cgwkkk4ocs', 'aJ8jDXfAsykuWVJSaUd3G1rE46aeeQI94k6Gu5TvGkMu7KkHq/srcBbWFBBR7de/pwEO3dS9et7gReF0dZEDjQ==', NULL, 0, 0, NULL, 'SlOZ0oOjwZkBICKFPckoqgS_9xdXYNKaTsBnNl3DMGU', NULL, 'a:0:{}', 0, NULL, NULL),
(46, 'ee', 'ee', 'ee@ok.fr', 'ee@ok.fr', 1, 'l78jlv62onkcgkk088s4wwgocoo00s4', '54aKdzMNuhjbdxBhUoPPy8OZH4GrNXv2+QnFy6EIEwzp7FknbVwpFJFtpsld8x8g10AmWCOW4OpCtWjzmv8CJg==', NULL, 0, 0, NULL, 'EugAe6SVo3O0Mep4A4frpvgnZqq2eMOzMRPzkOh7VEg', NULL, 'a:0:{}', 0, NULL, NULL),
(47, 'eez', 'eez', 'ee@ok.frz', 'ee@ok.frz', 0, 'nf8ll9bzvz4g4og0gkogcskg8kwgcw4', 'Kt5EYIXOCUmqWU4HyPra1zK+CtYm/ObAc8jrbR6815oO4stZi+k4jBr7J+C3LfZrCh2SPne5rdfWNQhCwT9VAw==', NULL, 0, 0, NULL, '3L2fR_79YWq7CAjbDDWhPK-5Atm98FV-zVEsWvM_t20', NULL, 'a:0:{}', 0, NULL, NULL),
(48, 'eezqaa', 'eezqaa', 'ee@oqk.frz', 'ee@oqk.frz', 0, 'iuk1yaxm73kskgksg08g84g8cs0k4og', '6nG45d7nzT3KYErCVQ8eBFKYgBs/ccGK06DukIxHiqeK0fBLNLcLibpB/fREFIClEz6ZIx6O8P1hkq0Wxe+bNQ==', NULL, 0, 0, NULL, '74BYObHZPYHSMeDlZ35kYoWce59zutq48T6_QxgHzus', NULL, 'a:0:{}', 0, NULL, NULL),
(49, 'eezqaaq', 'eezqaaq', 'qe@oqk.frz', 'qe@oqk.frz', 0, '1jt9yqbmqdxc0owgcscgscsgw04kw44', '3O8w/EKyRe6X8asvxh9NX3f1W55RgGZrh7CkzaHIA86zWpwPBuCrdYrb6BZzupRcHRRhSL2e4tUM2st8I8/+Ig==', NULL, 0, 0, NULL, 'djPdvvZth-9P7P7G3bM3Jv_RklgxN8Dm6WQMs8kUcz8', NULL, 'a:0:{}', 0, NULL, NULL),
(50, 'kk', 'kk', 'bb@kk.fr', 'bb@kk.fr', 0, 'rgu5zf83yw0kow088c8ccwg8gog8gks', 'qS8ZTE/3Na9LnSWrhxwjWtU6e19w846ZcrVDjXGzu9O9U6BLPHO9CCL5XgvAQOWsgErdAQuJntw2qkv1GMvzUg==', NULL, 0, 0, NULL, 'cso38Kmx165glHVw9SIat6r4jHp5Ee8yDJvyGmwNj4U', NULL, 'a:0:{}', 0, NULL, NULL),
(53, 'lool', 'lool', 'jjl@kk.fr', 'jjl@kk.fr', 1, 'pfet9s4yklc4s0swo08kgsc444kcck4', '9ZIPE8n6ezhkNAMgPvhISW64nH03G8sY3jH4TK3cdI3eAQasbvznreobuqAZr8IIbsfs8cmI560ZphT8ogg5eg==', NULL, 0, 0, NULL, 'ilCJPeeqZ5PC2EelSTRuDFVSgYSx8M1VLNLiMB2NwLE', NULL, 'a:0:{}', 0, NULL, 'en'),
(58, 'wx', 'wx', 'wx', 'wx', 1, '2hx978nayb8kckw4w84g0wkk4sk084w', 'cAn2HCm4YbTPHQIWGYZG/GQzSS6HmwLawU0ZxuP7R3F573FQ98Zqul9NziAqwVCggbTnRu9DiKMreQbo+wIFTA==', '2015-10-28 16:47:50', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, NULL),
(59, '&&', '&&', 'agollivier@gmail.com', 'agollivier@gmail.com', 1, 'rxsi4vcj8f4k440o0kwss80gwsk0ksw', 'Df9J5ekpmyqkXzXxDzFpQM4PfBMG0PGrW/UibDnFAUZIHAMMLETW1d1sbXxNqtDcoWRNGaH+QXPKL5pkDEw4FA==', '2015-10-28 18:00:52', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'en'),
(60, 'bb', 'bb', 'iuhii@ok.fr', 'iuhii@ok.fr', 0, 'hanqwfbhabcwcoc48kc4sk400ocowcg', 'sAd1Okyh9XPhrRXyEp6XPpL1l2QqDV+szxVvu20ZGEtJW69F7PSbdRgQgoxg2vEJtKmBs/B72LLwLlvyHkqCKQ==', NULL, 0, 0, NULL, '0-Amug7jXCB5DjJRTWB8LzSAQ-xjQwgJ6yViG-Wk1AU', NULL, 'a:0:{}', 0, NULL, NULL),
(61, 'ko', 'ko', 'okokok@ok.fr', 'okokok@ok.fr', 0, '30lq3pu0dxussscckog8kggs0o8oocw', 'PaT+3y3CZXGfDn2ajwvP/pG568nytXPeontRnteHhV/5lkg2YVj1/Sr+pIvK8VXz2q/s2OvMMuUNb3BgZKlR+w==', NULL, 0, 0, NULL, 'UfVzlOc2ge6Zx_ex8tYhusGB8jQSaElUCyol2aGNVlk', NULL, 'a:0:{}', 0, NULL, NULL),
(62, 'koo', 'koo', 'okopkok@ok.fr', 'okopkok@ok.fr', 0, 'gg88616j2q04o4skgsgcw0c8844cwog', 'gIIe2ATREUG7NqI+Z82nwvnQO4hcNeAasczOxv/Gmn1PDQ0Resh3CK+jLHbZ4DZjWULY1ImGIuZd09I/Dm8q2A==', NULL, 0, 0, NULL, 'wcFuvbrWnks1ryU_ze1zlHa5bcRZ4Ga_XWo0gGab3es', NULL, 'a:0:{}', 0, NULL, NULL),
(63, 'bn', 'bn', 'jjjj@jj.fr', 'jjjj@jj.fr', 0, 'eue2nt201ncc844o0s08o88c0okso8o', 'KZ5G8ZVIJxn38wtg/282gyFN7TSu6PwgA0voyvEuaXu72Yn3YtkvPZ4tIm0Xy9wiP86JNSRl6NnOm5BEcIW4Cw==', NULL, 0, 0, NULL, 'p4h4pVgVWBSS47pa4Ww8a-e9yUphR8uNzGRlsf6PuEA', NULL, 'a:0:{}', 0, NULL, NULL),
(64, 'mwa', 'mwa', 'mwa@kk.fr', 'mwa@kk.fr', 0, 'tv8kicxmeo0wo0s4k80ooggosw8go4o', 'LzOEEjD+FsCI4WDFooXeWzUeTtUaVopAVqewaExwYdkXzs+YjTJuDiL6Q7rIVindNsyWX824tJs5O4dc2lUyaQ==', NULL, 0, 0, NULL, 'vT7BR4BbbxyTuAZAoPCo3uxd_W3MItfapJvJo5YTDEw', NULL, 'a:0:{}', 0, NULL, NULL),
(65, 'cv', 'cv', 'cv@gf.fr', 'cv@gf.fr', 0, 'tjaxti8kojk4w0kg8kws8kk8o0k0o00', '0ZtKb+FvuC+impyuHQJctBhD5P5fGYF6MXmd1ncYpfNITB7sbuyiNst1pIOBbcH2R2jKvWEJ7vFdTkRXpvHHIw==', NULL, 0, 0, NULL, 'W2iEDeF3_k7Np_BxQMzPJpDKHHIyjxO4Uz1U6lPcg18', NULL, 'a:0:{}', 0, NULL, NULL),
(66, 'cvq', 'cvq', 'cqv@gf.fr', 'cqv@gf.fr', 0, 'kqow4gjcrv48w00scwg8sg0w48skgg', '6ypK8H61ZheXxvBAzXL5kzR3jQXdmVEnKCl3/DTCTSSoIwSJykwEpZxAws81nze6wGt1+rfqu7iEmeY8CwIXRQ==', NULL, 0, 0, NULL, '1n-b8Nhky7omMkuhn7eML0TtzObXtPMNPvISOBrRAqk', NULL, 'a:0:{}', 0, NULL, NULL),
(67, 'testadmin', 'testadmin', 'test@fr.fr', 'test@fr.fr', 0, 'ey9hnp2grvkg00swsoow40wcs8kwcsc', 'E1UZSnSBhLRxS3SeDlYh2uENe/fxCYtt2yVOl9YdhQ7UySKNDJT6Emxv+b+SCFm6hHCippD0lxy8sy9gvBei3Q==', NULL, 0, 0, NULL, 'dZ31xLb3kmoIAy8BkeyiNgZmKI5FKQqnDIu0-txqAa8', NULL, 'a:0:{}', 0, NULL, NULL),
(68, 'test2admin', 'test2admin', 'pl@ok.fr', 'pl@ok.fr', 0, 'hu03gr03ewow0o0wgosskscw4gksowg', '0lHsW1A9Ydg5YAl2rikQOIt7Pe1MGWUWpaqb83azYzmrB93bIdlldaGRi9VeAOUhSmVVrCGX5KpLVj6yLZGQ6Q==', NULL, 0, 0, NULL, 's9KsRRqUSLdtybfxkDOLK6U3gGIKJaAtbCvQNqN4b4w', NULL, 'a:0:{}', 0, NULL, NULL),
(69, 'testagainadmin', 'testagainadmin', 'encoretest@mm.fr', 'encoretest@mm.fr', 0, 'dkwua5ak740088sg804s4ss8cs8skwk', 'kZEjNaQUoC1Bo08XTWGbl4glLDC+BvMMaP3L13RXLefjQBgO9/qxxv4B7XqDj5w2EjvhPObYT1/m59lw9/bdhQ==', NULL, 0, 0, NULL, 'WPku9TkpNTBbgWxkRXgPcMgOmJ4zp8fnqWRNyuKHK-E', NULL, 'a:0:{}', 0, NULL, NULL),
(70, 'hhtest', 'hhtest', 'hh@hh.fr', 'hh@hh.fr', 0, 'hijhzx9zq680k04ws40kcwwo8kwwogc', 'IbbuAziQ4dClUGaLTwoZaHZ2pwbdpV4+aGZLUAsYaTYepKGiQHtPDY7q+LpTUcroSz60w9Pc/7qHfjdgIH7mcQ==', NULL, 0, 0, NULL, 'HaX7EYX-5byj1eJejTcsTUjtCOUvMB_P6ksj2HhYkS0', NULL, 'a:0:{}', 0, NULL, NULL),
(71, 'hhtestq', 'hhtestq', 'hhq@hh.fr', 'hhq@hh.fr', 1, '81fs0o7lmuoswo8sock4ss08wsc8cwo', 'xiG2IoiIveCdVDBm7dhNt9ipGIqPqNOsf3JpmqXoAuKKgFsFrQwOhzQdsw6fw8SBI4q1unNRu3Hps6grMyx/uQ==', NULL, 0, 0, NULL, '-L6z_JfijU-E7GmILHpAlXew415lKRz1xpRdS9qSwYE', NULL, 'a:0:{}', 0, NULL, 'en'),
(90, 'okjhnkjlm', 'okjhnkjlm', 'email@lacon.fr', 'email@lacon.fr', 1, 'lqkqxnjnsggcc8koskskgsggo8sksg8', 'ok', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
