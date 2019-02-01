-- --------------------------------------------------------
-- Host:                         localhost
-- Server versie:                5.7.19 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Versie:              9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Databasestructuur van verlofuren wordt geschreven
CREATE DATABASE IF NOT EXISTS `verlofuren` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `verlofuren`;

-- Structuur van  tabel verlofuren.absence wordt geschreven
CREATE TABLE IF NOT EXISTS `absence` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `hoursofleave` int(11) DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `status` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `leavetype_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `absence_user_id_index` (`user_id`),
  KEY `absence_leavetype_id_foreign` (`leavetype_id`),
  CONSTRAINT `absence_leavetype_id_foreign` FOREIGN KEY (`leavetype_id`) REFERENCES `leavetype` (`id`),
  CONSTRAINT `absence_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='default status is ''pending''\r\nafdelingshoofd kan dat veranderen naar ''accepted'' of ''declined''.\r\ndan uren aanpassen';

-- Dumpen data van tabel verlofuren.absence: ~26 rows (ongeveer)
/*!40000 ALTER TABLE `absence` DISABLE KEYS */;
INSERT INTO `absence` (`id`, `created_at`, `updated_at`, `hoursofleave`, `user_id`, `status`, `start_date`, `end_date`, `leavetype_id`) VALUES
	(121, '2019-01-28 17:04:50', '2019-01-28 19:00:50', 10, 72, 'Approved', '2019-01-28', '2019-01-28', 2),
	(122, '2019-01-28 17:05:01', '2019-01-29 13:31:44', 2, 7, 'Approved', '2018-12-28', '2018-12-28', 2),
	(123, '2019-01-28 19:57:04', '2019-01-28 19:57:06', 4, 62, 'Pending', '2018-02-28', '2018-02-28', 2),
	(124, '2019-01-28 17:05:01', '2019-01-28 17:05:02', 2, 60, 'Pending', '2018-10-28', '2018-10-28', 2),
	(125, '2019-01-28 17:05:01', '2019-01-28 17:05:02', 5, 69, 'Pending', '2018-12-28', '2018-12-28', 2),
	(126, '2019-01-28 17:05:01', '2019-01-28 17:05:02', 27, 69, 'Pending', '2018-12-28', '2018-12-28', 2),
	(127, '2019-01-28 17:05:01', '2019-01-28 17:05:02', 2, 74, 'Pending', '2018-12-28', '2018-12-28', 2),
	(128, '2019-01-28 17:05:01', '2019-01-28 17:05:02', 4, 73, 'Pending', '2018-12-28', '2018-12-28', 2),
	(129, '2019-01-28 17:05:01', '2019-01-28 17:05:02', 25, 61, 'Pending', '2018-12-28', '2018-12-28', 2),
	(130, '2019-01-28 17:05:01', '2019-01-28 17:05:02', 8, 63, 'Pending', '2018-12-28', '2018-12-28', 2),
	(131, '2019-01-28 17:05:01', '2019-01-28 17:05:02', 27, 74, 'Pending', '2018-12-28', '2018-12-28', 2),
	(132, '2019-01-28 17:05:01', '2019-01-28 17:05:02', 2, 73, 'Pending', '2018-12-28', '2018-12-28', 2),
	(133, '2019-01-28 17:05:01', '2019-01-28 17:05:02', 5, 61, 'Pending', '2018-12-28', '2018-12-28', 2),
	(134, '2019-01-28 17:05:01', '2019-01-29 10:09:04', 5, 74, 'Declined', '2018-12-28', '2018-12-28', 2),
	(135, '2019-01-28 17:05:01', '2019-01-28 17:05:02', 7, 60, 'Pending', '2018-12-28', '2018-12-28', 2),
	(136, '2019-01-28 17:05:01', '2019-01-28 17:05:02', 6, 61, 'Pending', '2018-12-28', '2018-12-28', 2),
	(137, '2019-01-28 17:05:01', '2019-01-28 17:05:02', 2, 74, 'Pending', '2018-12-28', '2018-12-28', 2),
	(138, '2019-01-28 17:05:01', '2019-01-28 17:05:02', 4, 74, 'Pending', '2018-12-28', '2018-12-28', 2),
	(139, '2019-01-28 17:05:01', '2019-01-28 17:05:02', 2, 72, 'Pending', '2018-12-28', '2018-12-28', 2),
	(140, '2019-01-28 17:05:01', '2019-01-28 17:05:02', 2, 74, 'Pending', '2018-12-28', '2018-12-28', 2),
	(141, '2019-01-28 17:05:01', '2019-01-28 17:05:02', 7, 60, 'Pending', '2018-12-28', '2018-12-28', 2),
	(142, '2019-01-28 17:05:01', '2019-01-28 17:05:02', 2, 74, 'Pending', '2018-12-28', '2018-12-28', 2),
	(143, '2019-01-28 17:05:01', '2019-01-28 17:05:02', 4, 74, 'Pending', '2018-12-28', '2018-12-28', 2),
	(144, '2019-01-28 17:05:01', '2019-01-28 17:05:02', 2, 62, 'Pending', '2018-12-28', '2018-12-28', 2),
	(145, '2019-01-28 17:05:01', '2019-01-29 10:09:53', 2, 63, 'Approved', '2019-12-28', '2019-12-28', 2),
	(146, '2019-01-28 17:05:01', '2019-01-28 19:01:06', 27, 7, 'Declined', '2018-12-28', '2018-12-28', 2),
	(147, '2019-01-29 10:07:02', '2019-01-29 10:08:40', 12, 74, 'Approved', '2019-01-01', '2019-01-08', 2),
	(148, '2019-01-29 13:31:03', '2019-01-29 13:32:06', 12, 74, 'Declined', '2019-01-29', '2019-01-29', 2);
/*!40000 ALTER TABLE `absence` ENABLE KEYS */;

-- Structuur van  tabel verlofuren.department wordt geschreven
CREATE TABLE IF NOT EXISTS `department` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel verlofuren.department: ~3 rows (ongeveer)
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Backend', '2018-10-25 09:23:37', '2018-10-25 09:23:36'),
	(2, 'Frontend', '2018-11-09 11:57:13', '2018-11-09 11:57:12'),
	(3, 'Administratie', '2018-11-09 11:57:09', '2018-11-09 11:57:11'),
	(4, 'Verkoop', '2019-01-28 20:21:22', '2019-01-28 20:21:22');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;

-- Structuur van  tabel verlofuren.free_days wordt geschreven
CREATE TABLE IF NOT EXISTS `free_days` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel verlofuren.free_days: ~1 rows (ongeveer)
/*!40000 ALTER TABLE `free_days` DISABLE KEYS */;
INSERT INTO `free_days` (`id`, `name`, `startdate`, `enddate`, `created_at`, `updated_at`) VALUES
	(1, 'Kerst', '2018-12-25', '2018-12-26', '2018-10-15 07:38:16', '2018-11-12 10:21:44');
/*!40000 ALTER TABLE `free_days` ENABLE KEYS */;

-- Structuur van  tabel verlofuren.leavetype wordt geschreven
CREATE TABLE IF NOT EXISTS `leavetype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel verlofuren.leavetype: ~1 rows (ongeveer)
/*!40000 ALTER TABLE `leavetype` DISABLE KEYS */;
INSERT INTO `leavetype` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
	(2, 'Ziekte verlof', 'De medewerker is ziek', NULL, NULL),
	(3, 'vakantie', 'vakantie verlof', '2019-01-28 20:22:00', '2019-01-28 20:22:00');
/*!40000 ALTER TABLE `leavetype` ENABLE KEYS */;

-- Structuur van  tabel verlofuren.migrations wordt geschreven
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel verlofuren.migrations: ~14 rows (ongeveer)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(6, '2014_10_12_000000_create_users_table', 1),
	(7, '2014_10_12_100000_create_password_resets_table', 1),
	(8, '2018_09_11_134915_create_absence_table', 1),
	(9, '2018_09_11_134941_create_foreign_keys', 1),
	(10, '2018_09_20_080411_create_admin_table', 2),
	(12, '2018_09_24_142118_create_leave_types_table', 3),
	(16, '2018_10_01_120857_create_days_offs_table', 6),
	(17, '2018_10_04_073010_add_availablehours_to_users', 7),
	(18, '2018_10_08_090738_add_workhours_to_users', 8),
	(19, '2018_10_15_062824_create_free_days_table', 8),
	(22, '2018_09_26_094615_create_roles_table', 9),
	(23, '2018_10_19_082818_create_foreign_key_roles', 9),
	(26, '2018_10_24_064936_create_departments_table', 10),
	(28, '2018_10_24_080445_add_department_to_user', 11),
	(29, '2018_11_07_100322_add_departmenthead_to_user', 12),
	(30, '2018_11_09_081921_add_leavetype_to_absence', 13),
	(31, '2018_12_03_130303_add_exact_id_to_users', 14);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Structuur van  tabel verlofuren.password_resets wordt geschreven
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel verlofuren.password_resets: ~2 rows (ongeveer)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
	('marcdoitonlinemedia@gmail.com', '$2y$10$zo.TvsEibZGnix2EqqhuGOBvaGkkBeVg.knpm.HTyKs41.7aZccg2', '2018-12-11 13:14:16'),
	('chantalesmee@live.nl', '$2y$10$HhlRpVh5n5UupQwOhFca0u.LNWoZE8rjF8UaL6J3N1a3m6YxYCD1C', '2018-12-12 07:35:45');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Structuur van  tabel verlofuren.roles wordt geschreven
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel verlofuren.roles: ~3 rows (ongeveer)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(3, 'Afdelingsleider', '2018-10-19 11:35:03', '2018-10-19 11:35:03'),
	(4, 'Algemeen medewerker', '2018-10-23 08:21:31', '2018-10-23 08:21:33'),
	(5, 'Administratie', '2018-10-29 11:21:52', '2018-10-29 11:21:52'),
	(6, 'stagiaire', '2019-01-28 20:21:12', '2019-01-28 20:21:12');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Structuur van  tabel verlofuren.users wordt geschreven
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `available_hours` int(11) DEFAULT NULL,
  `used_hours` int(11) DEFAULT NULL,
  `work_hours` int(11) DEFAULT NULL,
  `role_id` int(10) unsigned DEFAULT NULL,
  `department_id` int(10) unsigned DEFAULT NULL,
  `exact_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  KEY `users_department_id_foreign` (`department_id`),
  CONSTRAINT `users_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel verlofuren.users: ~15 rows (ongeveer)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `created_at`, `updated_at`, `firstname`, `prefix`, `lastname`, `email`, `password`, `remember_token`, `available_hours`, `used_hours`, `work_hours`, `role_id`, `department_id`, `exact_id`) VALUES
	(7, '2018-09-14 11:31:13', '2019-01-29 13:31:44', 'Chantal', NULL, 'Wiegand', 'chantalesmee@live.nl', '$2y$10$92ymLrEqcuPlCzUUR704VOguain.8onJEdESMFs9zw8XdYO1mPKf2', 'vtPpHW9gEVE8c1p9V8UKZIPN42wnQxCyx4dVhAMaKLCaYKj1cP77u1gtAOPk', 49, 51, 44, 5, 3, NULL),
	(60, '2019-01-28 15:52:53', '2019-01-28 15:52:53', 'Olga', NULL, 'Ingram', 'aliquam.arcu@malesuadafames.org', '$2y$10$mfq22XG0sDSgUpvTI2KoruD2gZ0zBZqqChffFhcu.2ksoLscCUUsK', NULL, 12, NULL, NULL, 5, 3, NULL),
	(61, '2019-01-28 15:53:40', '2019-01-28 15:53:40', 'Quinn', NULL, 'Parrish', 'ipsum.Suspendisse@ipsumSuspendissesagittis.org', '$2y$10$YfkxNricVuSaNORJatzJ2OZJUCUvY56Cr5pgB4UfjfRccoqIheiT2', NULL, 12, NULL, NULL, 3, 1, NULL),
	(62, '2019-01-28 15:54:26', '2019-01-28 15:54:26', 'Donovan', NULL, 'Francis', 'tristique.pellentesque@egetipsum.co.uk', '$2y$10$t2irN8bsJSip1TvzkLzogehW4TwLHkkC6FDo/fTlJBLGm8sZUvq3a', NULL, 12, NULL, NULL, 3, 2, NULL),
	(63, '2019-01-28 15:55:16', '2019-01-29 10:09:53', 'Nita', NULL, 'Richards', 'fames@atlacus.org', '$2y$10$TDkHizR0JO/Wo0ONmKbI3ueXrnPbWemJHP/78e8/igtCo9hvurTlG', NULL, 10, 2, NULL, 4, 1, NULL),
	(64, '2019-01-28 15:55:55', '2019-01-28 15:55:55', 'Jackson', NULL, 'Campos', 'Integer.sem.elit@at.org', '$2y$10$rTdxRiRyH8RXtNoenze0/e.BTBDz06iES7U6QuWqzl6gSkenBfRge', NULL, 12, NULL, NULL, 4, 2, NULL),
	(65, '2019-01-28 15:56:41', '2019-01-28 15:56:41', 'Ignatius', NULL, 'Bennett', 'sollicitudin.a.malesuada@facilisis.co.uk', '$2y$10$LyUOoCX.80kgVbGQKiuAfebGH7PmcHDBi4RLRD0eU0hg9t/3gxDUS', NULL, 12, NULL, NULL, 4, 1, NULL),
	(66, '2019-01-28 15:57:17', '2019-01-28 15:57:17', 'Paula', NULL, 'Rios', 'pede@Classaptent.com', '$2y$10$fh7Wk3SwuT0RSrdSljuPaeykhPbJIuKGHrq64JKcnqmY2puZUgIYm', NULL, 12, NULL, NULL, 4, 2, NULL),
	(67, '2019-01-28 15:58:35', '2019-01-28 15:58:35', 'Kibo', NULL, 'Barber', 'sodales.purus.in@telluslorem.edu', '$2y$10$F8CmOfaCzQadNHQPU/V0YexpozpjnSqiWJTo83bs.gL4ZOe67bMda', NULL, 12, NULL, NULL, 4, 1, NULL),
	(68, '2019-01-28 15:59:06', '2019-01-28 15:59:06', 'Ryan', NULL, 'Webster', 'non.sollicitudin.a@loremsitamet.co.uk', '$2y$10$AkBn6YKEcKv35V5BueT/w.yzwEcElNFVuHijRaogf4VbBCE4P4dIG', NULL, 12, NULL, NULL, 4, 2, NULL),
	(69, '2019-01-28 15:59:47', '2019-01-28 15:59:47', 'Zenaida', NULL, 'Hurst', 'tempor@diamlorem.org', '$2y$10$.8//L7lhJbqH11w2zn517u.Y1t2A2Vs22vEccsYkExKTyYIjGOaO2', NULL, 12, NULL, NULL, 4, 1, NULL),
	(70, '2019-01-28 16:00:22', '2019-01-28 16:00:22', 'Uriah', NULL, 'Pitts', 'sapien.cursus@magnaSedeu.org', '$2y$10$IjorTsaVVeiCWtP0tEGCHe45rqK3KuvtJWwrTX6pUHfBM3rhB7FLS', NULL, 12, NULL, NULL, 4, 1, NULL),
	(71, '2019-01-28 16:00:50', '2019-01-28 16:00:50', 'Reed', NULL, 'Mcmahon', 'semper@odioEtiam.ca', '$2y$10$9HIlFtikWLiUkwCQ0ZZH7.RaKB/IB9llcF2I69IkJFP9iKigjI.8m', NULL, 12, NULL, NULL, 4, 2, NULL),
	(72, '2019-01-28 16:01:53', '2019-01-28 19:00:50', 'Bruce', NULL, 'Crane', 'ligula.Nullam.feugiat@tristiquepharetra.com', '$2y$10$46yzROcGFMXQEP5mut5tp.wDd75ndF/WXoLl6XaAODR67aOn5Qk3S', NULL, 2, 10, NULL, 4, 2, NULL),
	(73, '2019-01-28 16:03:06', '2019-01-28 16:03:06', 'Hank', NULL, 'Smidt', 'afdelingshoofd@test.nl', '$2y$10$2fpvZu6r7CTEnAZ8.S.GWO.Jht6.Ww4OMR/CcvF1azvIo5T62uKNa', 'KVfbSgS9lvAnSX00MrLCfSbWD6L65FFqj2nY5zDZDanZsNBoq26Uwua1IF7C', 30, NULL, NULL, 3, 1, NULL),
	(74, '2019-01-28 16:03:42', '2019-01-29 10:08:40', 'lisa', NULL, 'Kudrow', 'medewerker@test.nl', '$2y$10$DmdkyYUG1TlO0hEwcsX5eeyuZLLb5NjCKOpo5LkFVbgHpGnG6T3ky', 'j266blNFB4M1qWaBSH5tEzNTXOdtqb1m3et7sPIeAPMSNnTqEWTzWUNShIAs', 8, 12, NULL, 4, 2, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
